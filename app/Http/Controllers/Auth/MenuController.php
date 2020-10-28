<?php

namespace App\Http\Controllers\Auth;


use App\Http\Controllers\Controller;
use App\Models\Item;
use App\Models\ItemCategory;
use App\Models\Menu;
use App\Models\QrCode;
use App\Models\Structure;
use App\Models\StructureUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MenuController extends Controller
{


    private $user;
    private $title;

    /**
     * Create a constrcut of class
     *
     * @return void
     */

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::user(); // returns user
            return $next($request);
        });

        $this->title = 'menus';
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {


        $structure_users = StructureUser::all();
        $current_structure = '';
        $structure_selected = '';
        $structures = Structure::all()->sortBy('name');

        if ($this->user->hasRole('superadministrator')) {


            if (isset($request['structure'])) {
                $structure = Structure::where('id', $request['structure'])->first();
                $structure_selected = $structure->id_code;
                $items = Menu::where('structure_id', $structure->id_code)->orderBy('order', 'ASC')->paginate(30)->appends(request()->query());
            } else {
                $items = Menu::orderBy('order', 'ASC')->paginate(30)->appends(request()->query());
            }
        } else {

            $current_structure = $this->structure_select();
            $structures = Structure::where('id_code', $current_structure)->get();

            if (isset($request['structure'])) {
                $structure = Structure::where('id', $request['structure'])->first();
                $structure_selected = $structure->id_code;
                $items = Menu::where('structure_id', $structure->id_code)->where('structure_id', $current_structure)->orderBy('order', 'ASC')->paginate(30)->appends(request()->query());
            } else {
                $items = Menu::where('structure_id', $current_structure)->orderBy('order', 'ASC')->paginate(30)->appends(request()->query());
            }

        }

        return view('auth.menus.index')->with(['items' => $items, 'structures' => $structures, 'title' => $this->title, 'structure_selected' => $structure_selected]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Menu';

        if ($this->user->hasRole('superadministrator')) {
            $structures = Structure::all()->sortBy('name');
            $items = Item::where('visible',true)->orderBy('name_it')->get();
        } else {
            $str = Structure::all()->sortBy('name');
            $itm = Item::where('visible',true)->orderBy('name_it')->get();
            $structures = [];
            $items = [];
            $current_structure = $this->structure_select();

            foreach ($str as $st) {
                if ($st->id_code == $current_structure) {
                    array_push($structures, $st);
                }
            }

            foreach ($itm as $it) {
                if ($it->structure_id == $current_structure) {
                    array_push($items, $it);
                }
            }
        }


        $item_categories = ItemCategory::all()->sortBy('name_it');


        return view('auth.menus.create', compact('title', 'items', 'structures', 'item_categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $user = Auth::user();

        $this->validate($request, [
            'id' => 'required',
            'name_en' => 'required',
            'name_it' => 'required',
            'structure_id' => 'required',
            'visible' => 'required',
            'items' => 'required',
            'price_view' => 'required'
        ],
            ['id.required' => 'Il campo ID è richiesto',
                'name_en.required' => 'Il campo Name En è richiesto',
                'name_it.required' => 'Il campo Name It è richiesto',
                'structure_id.required' => 'Il campo Struttura è richiesto',
                'visible.required' => 'Il campo Visible è richiesto',
                'items.required' => 'Gli Items sono richiesti',
                'price_view.required' => 'Il campo View è richiesto'
            ]);

        $items = $request->input('items');

        if ($items != null) {
            $items = implode(',', $items);
        }

        $menu = $request->all();
        $menu['items'] = $items;
        $menu['user_id'] = $user->id;

        $res = Menu::create($menu);

        $message = $res ? 'Il Menu' . $menu['name_it'] . ' è stata inserito' : 'Il Menu ' . $menu['name_it'] . ' non è stato inserito';
        session()->flash('message', $message);
        return redirect()->route('menus.index');
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Menu $menu
     * @return \Illuminate\Http\Response
     */
    public function show(Menu $menu)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Menu $menu
     * @return \Illuminate\Http\Response
     */
    public function edit(Menu $menu)
    {

        $item = $menu;
        $items = Item::all()->sortBy('name_it');
        $structures = Structure::all()->sortBy('name');
        $item_categories = ItemCategory::all()->sortBy('name_it');
        $structure_users = StructureUser::all();
        $current_structure = '';
        $array = $this->multiselect($items, $item);
        $checkedVisible = $item->visible;



        if ($this->user->hasRole('superadministrator')) {
            return view('auth.menus.edit')->with(['item' => $item, 'items' => $items, 'structures' => $structures, 'item_categories' => $item_categories, 'array' => $array, 'title' => $this->title, 'checkedVisible' => $checkedVisible]);
        } else {
            foreach ($structure_users as $structure_user) {
                if ($structure_user->user_id == $this->user->id) {
                    $current_structure = $structure_user->structure_id;
                }
            }
            if ($item->structure_id == $current_structure) {
                return view('auth.menus.edit')->with(['item' => $item, 'items' => $items, 'structures' => $structures, 'item_categories' => $item_categories, 'array' => $array, 'title' => $this->title, 'checkedVisible' => $checkedVisible]);
            } else {
                return (abort(403));
            }
        }

    }

    public function multiselect($items, $item)
    {

        $array = [];

        if (!$item->items == null) {

            $selected = explode(',', $item->items);



            foreach ($selected as $select) {
                $all = Item::where('id_code', $select)->first();
                if ($all!=null) {
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

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Menu $menu
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Menu $menu)
    {

        $this->validate($request, [
            'id' => 'required',
            'name_en' => 'required',
            'name_it' => 'required',
            'structure_id' => 'required',
            'visible' => 'required',
            'items' => 'required',
            'price_view' => 'required'
        ],
            ['id.required' => 'Il campo ID è richiesto',
                'name_en.required' => 'Il campo Name En è richiesto',
                'name_it.required' => 'Il campo Name It è richiesto',
                'structure_id.required' => 'Il campo Struttura è richiesto',
                'visible.required' => 'Il campo Visible è richiesto',
                'items.required' => 'Gli Items sono richiesti',
                'price_view.required' => 'Il campo View è richiesto'
            ]);

        $items = $request->input('items');

        if ($items != null) {
            $items = implode(',', $items);
        }

        $data = $request->all();
        $data['items'] = $items;
        $data['user_id'] = $this->user->id;

        $res = Menu::find($menu->id_code)->update($data);

        $message = $res ? 'Il Menu' . $menu['name_it'] . ' è stato modificato' : 'Il Menu ' . $menu['name_it'] . ' non è stato modificato';
        session()->flash('message', $message);
        return redirect()->route('menus.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Menu $menu
     * @return \Illuminate\Http\Response
     */
    public function destroy(Menu $menu)
    {

        $qrcodes = QrCode::all();
        $qrcode_name = '';
        $error = false;

        foreach ($qrcodes as $qrcode) {
            $array_qrcode = explode(',', $qrcode->menus);
            if (in_array($menu->id_code, $array_qrcode)) {
                $error = true;
                $qrcode_name = $qrcode->id;
            }

        }

        if ($error) {
            $message = 'Il Menù ' . $menu->name_it . ' non può essere cancellato perchè è presente nel QR Code ' . $qrcode_name;
            session()->flash('message', $message);
            session()->flash('alert-class', 'alert-danger');
            return redirect()->route('menus.index');
        } else {
            $res = $menu->delete();
            $message = $res ? 'Il Menù ' . $menu->name_it . ' è stato cancellato' : 'Il Menù ' . $menu->name_it . ' non è stato cancellato';
            session()->flash('message', $message);
            return redirect()->route('menus.index');
        }

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


    public function getMenuStructure($request)
    {
        $res = Menu::where('structure_id', $request)->get();
        return json_encode($res);
    }


}
