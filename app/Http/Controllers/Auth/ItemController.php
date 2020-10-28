<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Allergen;
use App\Models\Feature;
use App\Models\Format;
use App\Models\Ingredient;
use App\Models\Item;
use App\Models\ItemCategory;
use App\Models\Menu;
use App\Models\Structure;
use App\Models\StructureUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ItemController extends Controller
{

    private $user;
    private $title;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::user(); // returns user
            return $next($request);
        });

        $this->title = 'Item';
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $req = $request->all();

        $structure_users = StructureUser::all();
        $current_structure = '';
        if ($this->user->hasRole('superadministrator')) {
            if (isset($req['cat'])) {
                $category = ItemCategory::where('id_code', $req['cat'])->first();
                $this->title = $category->name_it;
                $items = Item::where('category_id', $req['cat'])->orderBy('name_it', 'ASC')->paginate(30)->appends(request()->query());
            } else {
                $items = Item::orderBy('name_it', 'ASC')->paginate(30)->appends(request()->query());
            }
        } else {
            foreach ($structure_users as $structure_user) {
                if ($structure_user->user_id == $this->user->id) {
                    $current_structure = $structure_user->structure_id;
                }
            }

            if (isset($req['cat'])) {
                $category = ItemCategory::where('id_code', $req['cat'])->first();
                $this->title = $category->name_it;
                $items = Item::where('structure_id', $current_structure)->where('category_id', $req['cat'])->orderBy('name_it', 'ASC')->paginate(30)->appends(request()->query());
            } else {
                $items = Item::where('structure_id', $current_structure)->orderBy('name_it', 'ASC')->paginate(30)->appends(request()->query());
            }
        }

        if (!isset($req['cat'])) {
            $req['cat'] = null;
        }
        return view('auth.items.index')->with(['items' => $items, 'title' => $this->title, 'category' => $req['cat']]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

        $select_category = $request['cat'];

        $title = 'Item';
        $users = Auth::user()->all();
        $item_categories = ItemCategory::all()->sortBy('name_it');
        $str = Structure::all()->sortBy('name');

        $allergens = Allergen::all()->sortBy('name_it');
        $features = Feature::all()->sortBy('name_it');
        $formats = Format::all()->sortBy('name_it');


        if ($this->user->hasRole('superadministrator')) {
            $structures = Structure::all()->sortBy('name');
            $ingredients = Ingredient::where('visible', true)->orderBy('name_it')->get();

        } else {
            $structure_users = StructureUser::all();
            $structures = [];
            $current_structure = '';
            foreach ($structure_users as $structure_user) {
                if ($structure_user->user_id == $this->user->id) {
                    $current_structure = $structure_user->structure_id;
                }
            }

            foreach ($str as $st) {
                if ($st->id_code == $current_structure) {
                    array_push($structures, $st);
                }
            }

            $query = DB::table('ingredients');
            $query->where('user_id', $this->user->id)->where('visible', true);
            foreach ($users as $user) {
                if ($user->hasRole('superadministrator')) {
                    $query->orWhere('user_id', $user->id)->where('visible', true);
                }
            }

            $ingredients = $query->orderBy('name_it', 'ASC')->get();

        }


        return view('auth.items.create', compact('title', 'item_categories', 'structures', 'ingredients', 'allergens', 'features', 'formats', 'select_category'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $user = auth()->user();

        $category = ItemCategory::where('id_code', $request['category_id'])->first();

        $this->validate($request, [
            'id' => 'required',
            'category_id' => 'required',
            'name_en' => 'required',
            'name_it' => 'required',
            'visible' => 'required',
            'view' => 'required',
        ]);

        $ingredients = $request->input('ingredients');

        if ($ingredients != null) {
            $ingredients = implode(',', $ingredients);
        }

        $allergens = $request->input('allergens');
        if ($allergens != null) {
            $allergens = implode(',', $allergens);
        }

        $features = $request->input('features');
        if ($features != null) {
            $features = implode(',', $features);
        }


        $item = $request->all();
        $item['allergens'] = $allergens;
        $item['ingredients'] = $ingredients;
        $item['features'] = $features;
        $item['user_id'] = $user->id;
        $res = Item::create($item);

        $message = $res ? 'L\'elemento ' . $item['name_it'] . ' è stata inserito' : 'L\'elemento ' . $item['name_it'] . ' non è stato inserito';
        session()->flash('message', $message);
        return redirect('/admin/items?cat=' . $request['category_id']);
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Item $item
     * @return \Illuminate\Http\Response
     */
    public function show(Item $item)
    {
        $title = "Item";
        return view('auth.items.show', ['item' => $item, 'title' => $title]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Item $item
     * @return \Illuminate\Http\Response
     */
    public function edit(Item $item)
    {

        $current_structure = $this->structure_select();
        $select_category = $item->category_id;

        if ($this->user->hasRole('superadministrator') || $current_structure == $item->structure_id) {


            $title = 'Item';
            $users = Auth::user()->all();
            $item_categories = ItemCategory::all()->sortBy('name_it');
            $structures = Structure::all()->sortBy('name');


            if ($this->user->hasRole('superadministrator')) {
                $ingredients = Ingredient::all()->sortBy('name_it');
                $structures = Structure::all()->sortBy('name');
            } else {

                $query = Ingredient::where('user_id', $this->user->id);
                $structures = [];
                $str = Structure::all()->sortBy('name');

                foreach ($str as $st) {
                    if ($st->id_code == $current_structure) {
                        array_push($structures, $st);
                    }
                }

                foreach ($users as $user) {
                    if ($user->hasRole('superadministrator')) {
                        $query->orWhere('user_id', $user->id);
                    }
                }
                $ingredients = $query->orderBy('name_it', 'ASC')->get();
            }


            $allergens = Allergen::all()->sortBy('name_it');
            $features = Feature::all()->sortBy('name_it');
            $formats = Format::all()->sortBy('name_it');

            $db_ingredients = new Ingredient();
            $db_allergens = new Allergen();
            $db_features = new Feature();
            $ingredients_selected = $this->multiselect($ingredients, $item->ingredients, $db_ingredients, true);
            $allergens_selected = $this->multiselect($allergens, $item->allergens, $db_allergens);
            $features_selected = $this->multiselect($features, $item->features, $db_features);

            $checkedVisible = $item->visible;
            return view('auth.items.edit', compact('item', 'checkedVisible', 'item_categories', 'structures', 'ingredients_selected', 'allergens_selected', 'features_selected', 'features', 'formats', 'title', 'select_category'));

        } else {
            return (abort(403));
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Item $item
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Item $item)
    {

        $ingredients = $request->input('ingredients');

        if ($ingredients != null) {
            $ingredients = implode(',', $ingredients);
        } else {
            $ingredients = null;
        }

        $allergens = $request->input('allergens');

        if ($allergens != null) {
            $allergens = implode(',', $allergens);
        } else {
            $allergens = null;
        }

        $features = $request->input('features');

        if ($features != null) {
            $features = implode(',', $features);
        } else {
            $features = null;
        }


        $data = $request->all();
        $data['ingredients'] = $ingredients;
        $data['allergens'] = $allergens;
        $data['features'] = $features;

        $res = Item::find($item->id_code)->update($data);

        $message = $res ? 'L\'Elemento ' . $item->name_it . ' è stato modificato' : 'L\'Elemento ' . $item->name_it . ' non è stato modificato';
        session()->flash('message', $message);
        return redirect('/admin/items?cat=' . $request['category_id']);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Item $item
     * @return \Illuminate\Http\Response
     */
    public function destroy(Item $item)
    {

        if ($this->user->hasRole('superadministrator') || $this->user->id == $item->user_id) {

            $menus = Menu::all();
            $menu_name = '';
            $error = false;

            foreach ($menus as $menu) {

                $array_menu = explode(',', $menu->items);
                if (in_array($item->id_code, $array_menu)) {
                    $error = true;
                    $menu_name = $menu->name_it;
                }

            }

            if ($error) {
                $message = 'L\'Elemento ' . $item->name_it . ' non può essere cancellato perchè è presente nel menu ' . $menu_name;
                session()->flash('message', $message);
                session()->flash('alert-class', 'alert-danger');
                return redirect('/admin/items?cat=' . $item['category_id']);
            } else {
                $res = $item->delete();
                $message = $res ? 'L\'Elemento ' . $item->name_it . ' è stato cancellato' : 'L\'Elemento ' . $item->name_it . ' non è stato cancellato';
                session()->flash('message', $message);
                return redirect('/admin/items?cat=' . $item['category_id']);
            }
        } else {
            return (abort(403));
        }
    }


    public function multiselect($items, $item, $db, $inner = null)
    {

        $array = [];
        $users = Auth::user()->all();


        if (!$item == null) {

            $selected = explode(',', $item);

            foreach ($selected as $select) {

                if ($inner == true) {
                    if ($this->user->hasRole('superadministrator')) {
                        $all = $db::where('id_code', $select)->first();
                        array_push($array, $all);
                    } else {

                        $all = $db::where('id_code', $select)->first();

                        array_push($array, $all);
                    }
                } else {
                    $all = $db::where('id_code', $select)->first();
                    array_push($array, $all);
                }

            }

            foreach ($items as $it) {

                if (!in_array($it, $array)) {
                    $it->selected = false;
                    array_push($array, $it);
                }
            }

        } else {
            foreach ($items as $it) {
                $it->selected = false;
                array_push($array, $it);
            }
        }

        return $array;
    }


    public function structure_select()
    {

        $structure_users = StructureUser::all();
        $current_structure = '';

        foreach ($structure_users as $structure_user) {
            if ($structure_user->user_id == $this->user->id) {
                $current_structure = $structure_user->structure_id;
            }
        }

        return $current_structure;
    }


    public function getItemStructure($request)
    {
        $res = Item::where('structure_id', $request)->where('visible', true)->get();
        return json_encode($res);
    }

    public function getIngredientsStructure()
    {

        $users = Auth::user()->all();
        $item_categories = ItemCategory::all()->sortBy('name_it');
        $structures = Structure::all()->sortBy('name');


        if ($this->user->hasRole('superadministrator')) {
            $ingredients = Ingredient::all()->sortBy('name_it');
        } else {

            $query = Ingredient::where('user_id', $this->user->id);
            $structures = [];
            $str = Structure::all()->sortBy('name');

            foreach ($users as $user) {
                if ($user->hasRole('superadministrator')) {
                    $query->orWhere('user_id', $user->id);
                }
            }
            $ingredients = $query->orderBy('name_it', 'ASC')->get();
        }

        return json_encode($ingredients);

    }
}
