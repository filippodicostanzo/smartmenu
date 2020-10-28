<?php

namespace App\Http\Controllers\Auth;

use App\Models\Allergen;
use App\Models\Dish;
use App\Models\Feature;
use App\Models\Ingredient;
use App\Models\Structure;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DishController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->all()) {
            $search = $request->all();
            $items = Dish::where('name_it','like','%'.$search['q'].'%')->paginate(30);
        } else {
            $items = Dish::orderBy('name_it', 'ASC')->paginate(30);
        }

        $title = 'Dishes';
        return view('auth.dishes.index', compact('items', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Dish';

        $structures = Structure::all()->sortBy('name');
        $ingredients = Ingredient::all()->sortBy('name_it');
        $allergens = Allergen::all()->sortBy('name_it');
        $features = Feature::all()->sortBy('name_it');

        return view('auth.dishes.create', compact('title', 'structures','ingredients','allergens', 'features'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $ingredients =$request->input('ingredients');

        $user = auth()->user();

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


        $dish = $request->all();
        $dish['allergens'] = $allergens;
        $dish['ingredients'] = $ingredients;
        $dish['features'] = $features;
        $dish['user_id'] = $user->id;
        $res = Dish::create($dish);

        $message = $res ? 'La Pietanza ' . $dish['name_it'] . ' è stata inserito' : 'La Pietanza ' . $dish['name_it'] . ' non è stato inserito';
        session()->flash('message', $message);
        return redirect()->route('dishes.index');


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Dish  $dish
     * @return \Illuminate\Http\Response
     */
    public function show(Dish $dish)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Dish  $dish
     * @return \Illuminate\Http\Response
     */
    public function edit(Dish $dish)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Dish  $dish
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Dish $dish)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Dish  $dish
     * @return \Illuminate\Http\Response
     */
    public function destroy(Dish $dish)
    {
        //
    }


    /**
     * Get Public API.
     *
     * @param \App\Town $town
     * @return \Illuminate\Http\Response
     */

    public function api (Request $request) {
        $dishes = Dish::orderBy('name_it')->get();
        $dishesJson = json_encode($dishes);
        return $dishesJson;
    }
}
