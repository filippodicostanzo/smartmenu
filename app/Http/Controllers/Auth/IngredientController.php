<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Allergen;
use App\Models\Ingredient;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class IngredientController extends Controller
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
        $this->middleware('auth');
        $this->middleware(function ($request, $next) {
            $this->user = Auth::user(); // returns user
            return $next($request);
        });

        $this->title = 'ingredients';
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $user = Auth::user();
        $users = Auth::user()->all();

        if ($user->hasRole('superadministrator')) {
            if ($request->all()) {
                $search = $request->all();
                if(isset($search['q'])) {
                    $items = Ingredient::where('name_it', 'like', '%' . $search['q'] . '%')->paginate(30);
                }
                else {
                    $items = Ingredient::orderBy('name_it', 'ASC')->paginate(30);
                }
            }
            else {
                $items = Ingredient::orderBy('name_it', 'ASC')->paginate(30);
            }

        } else {

            if ($request->all()) {
                $search = $request->all();
                if(isset($search['q'])) {
                    $query = Ingredient::where('user_id', $user->id);
                    $query->where('name_it', 'like', '%' . $search['q'] . '%')->paginate(30);
                    foreach ($users as $usr) {
                        if ($usr->hasRole('superadministrator')) {
                            $query->orWhere('user_id', $usr->id);
                            $query->where('name_it', 'like', '%' . $search['q'] . '%')->paginate(30);
                        }
                    }
                }

                else {
                    $query = Ingredient::where('user_id', $user->id);
                    foreach ($users as $user) {
                        if ($user->hasRole('superadministrator')) {
                            $query->orWhere('user_id', $user->id);
                        }
                    }
                }
            }
            else {
                /*$query = DB::table('ingredients');
                $query->where('user_id', $user->id);*/
                $query = Ingredient::where('user_id', $user->id);
                foreach ($users as $user) {
                    if ($user->hasRole('superadministrator')) {
                        $query->orWhere('user_id', $user->id);
                        $itt = $query->orWhere('user_id', $user->id);
                    }
                }

            }


            $items = $query->orderBy('name_it', 'ASC')->paginate(30);
        }

        /*

                $items = Ingredient::where('user_id', $user->id)->orWhere(function($query) {
                    $users = Auth::user()->all();
                    foreach ($users as $us) {
                        $query->whereBetween('user_id', $us->id);
                    }
                })->paginate(30);


        */

        /*
                if ($request->all()) {
                    $search = $request->all();
                    if(isset($search['q'])) {
                        $items = Ingredient::where('name_it', 'like', '%' . $search['q'] . '%')->paginate(30);
                    }
                    else {
                        $items = Ingredient::orderBy('name_it', 'ASC')->paginate(30);
                    }
                } else {
                    $items = Ingredient::orderBy('name_it', 'ASC')->paginate(30);
                    foreach ($items as $key => $item) {
                        foreach ($users as $user) {
                            if ($user->hasRole('superadministrator')) {
                                if ($item->user_id != $user->id) {
                                    //unset($items[$key]);
                                }
                            }
                        }
                    }
                }
        */
        return view('auth.ingredients.index', ['items'=>$items, 'title'=>$this->title]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Ingredients';
        $allergens = Allergen::all()->sortBy('name_it');
        return view('auth.ingredients.create', compact('title', 'allergens'));
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

        $this->validate($request, [
            'id' => 'required',
            'name_it' => 'required',
            'name_en' => 'required',
            'visible' => 'required'
        ]);

        $allergens = $request->input('allergens');
        if ($allergens != null) {
            $allergens = implode(',', $allergens);
        }

        $ingredient = $request->all();
        $ingredient['allergens'] = $allergens;
        $ingredient['user_id'] = $user->id;
        $res = Ingredient::create($ingredient);

        $message = $res ? 'L\'Ingrediente ' . $ingredient['name_it'] . ' è stata inserito' : 'L\'Ingrediente ' . $ingredient['name_it'] . ' non è stato inserito';
        session()->flash('message', $message);
        return redirect()->route('ingredients.index');
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Ingredient $ingredient
     * @return \Illuminate\Http\Response
     */
    public function show(Ingredient $ingredient)
    {
        return view('auth.ingredients.show', ['item' => $ingredient]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Ingredient $ingredient
     * @return \Illuminate\Http\Response
     */
    public function edit(Ingredient $ingredient)
    {


        if ($this->user->hasRole('superadministrator') || $this->user->id == $ingredient->user_id) {
            $item = $ingredient;

            $title = 'Ingredient';

            $allergens = Allergen::all()->sortBy('name_it');
            $users = User::all();

            $array = [];

            if (!$item->allergens == null) {

                $selected = explode(',', $item->allergens);

                foreach ($selected as $select) {
                    $all = Allergen::where('id_code', $select)->first();
                    array_push($array, $all);
                }

                foreach ($allergens as $allergen) {
                    if (!in_array($allergen, $array)) {
                        $allergen->selected = false;
                        array_push($array, $allergen);
                    }
                }
            } else {
                foreach ($allergens as $allergen) {
                    $allergen->selected = false;
                    array_push($array, $allergen);
                }
            }


            $checkedVisible = $ingredient->visible;
            return view('auth.ingredients.edit', compact('item', 'checkedVisible', 'array', 'title', 'users'));
        }

        else {
            return abort('403');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Ingredient $ingredient
     * @return \Illuminate\Http\Response
     */
    public
    function update(Request $request, Ingredient $ingredient)
    {

        $this->validate($request, [
            'id' => 'required',
            'name_it' => 'required',
            'name_en' => 'required',
            'visible' => 'required'
        ]);

        $allergens = $request->input('allergens');

        if ($allergens != null) {
            $allergens = implode(',', $allergens);
        } else {
            $allergens = null;
        }

        $data = $request->all();
        $data['allergens'] = $allergens;

        $res = Ingredient::find($ingredient->id_code)->update($data);

        $message = $res ? 'L\'Allergene ' . $ingredient->name_it . ' è stato modificato' : 'L\'Allergene ' . $ingredient->name_it . ' non è stato modificato';
        session()->flash('message', $message);
        return redirect()->route('ingredients.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Ingredient $ingredient
     * @return \Illuminate\Http\Response
     */
    public
    function destroy(Ingredient $ingredient)
    {


            $res = $ingredient->delete();
            $message = $res ? 'L\'Ingrediente ' . $ingredient->name_it . ' è stato cancellato' : 'L\'Ingrediente ' . $ingredient->name_it . ' non è stato cancellato';
            session()->flash('message', $message);
            return redirect()->route('ingredients.index');

    }

    public
    function getGridValue(Request $request)
    {

        $query = $request->all();

        dd($request);

    }
}
