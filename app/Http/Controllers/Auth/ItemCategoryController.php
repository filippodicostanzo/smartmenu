<?php

namespace App\Http\Controllers\Auth;

use App\Models\Allergen;
use App\Models\Feature;
use App\Models\Ingredient;
use App\Models\ItemCategory;
use App\Models\Structure;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ItemCategoryController extends Controller
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

        $this->title = 'item_categories';
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $items = ItemCategory::orderBy('name_it', 'ASC')->paginate(30);
        return view('auth.item_categories.index', ['items'=>$items, 'title'=>$this->title]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {


        if ($this->user->hasRole('superadministrator')) {
            $title = 'Item Category';
            return view('auth.item_categories.create', compact('title'));
        }
        else{
            return abort('403');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        if ($this->user->hasRole('superadministrator')) {
            $user = Auth::user();

            $fields = $request['fields'];

            if ($fields != null) {
                $fields = implode(',', $fields);
            }

            $itemCategory = new ItemCategory($request->all());
            $itemCategory['fields'] = $fields;
            $itemCategory['user_id'] = $user->id;
            $res = $itemCategory->save();
            $message = $res ? 'La Categoria ' . $itemCategory->name_it . ' è stata inserita' : 'La Categoria ' . $itemCategory->name_it . ' non è stata inserita';
            session()->flash('message', $message);
            return redirect()->route('item_categories.index');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ItemCategory  $itemCategory
     * @return \Illuminate\Http\Response
     */
    public function show(ItemCategory $itemCategory)
    {
        $title = "Item Category";
        return view('auth.item_categories.show', ['item' => $itemCategory, 'title' => $title]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ItemCategory  $itemCategory
     * @return \Illuminate\Http\Response
     */
    public function edit(ItemCategory $itemCategory)
    {
        if ($this->user->hasRole('superadministrator')) {

            $item = $itemCategory;
            $title = 'Item Category';
            $res = ItemCategory::find($itemCategory)->first();
            $checkedVisible = $res->visible;
            return view('auth.item_categories.edit', compact('item', 'checkedVisible', 'title'));
        }

        else {
            return abort('403');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ItemCategory  $itemCategory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ItemCategory $itemCategory)
    {

        $data = $request->all();
        $fields = $request->input('fields');



        if ($fields != null) {
            $fields = implode(',', $fields);
        }

        $data['fields'] = $fields;

        $res = ItemCategory::find($itemCategory->id_code)->update($data);

        $message = $res ? 'La Categoria ' . $itemCategory->name_it . ' è stata modificata' : 'La Categoria ' . $itemCategory->name_it . ' non è stata modificata';
        session()->flash('message', $message);
        return redirect()->route('item_categories.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ItemCategory  $itemCategory
     * @return \Illuminate\Http\Response
     */
    public function destroy(ItemCategory $itemCategory)
    {
        if ($this->user->hasRole('superadministrator')) {
            $res = $itemCategory->delete();
            $message = $res ? 'La Categoria ' . $itemCategory->name_it . ' è stata cancellata' : 'La Categoria ' . $itemCategory->name_it . ' non è stata cancellata';
            session()->flash('message', $message);
            return redirect()->route('item_categories.index');
        }
    }

    public function getItemCategory ($request) {
        $res = DB::table('item_categories')->where('id_code', $request)->first();
        return json_encode($res);
    }
}
