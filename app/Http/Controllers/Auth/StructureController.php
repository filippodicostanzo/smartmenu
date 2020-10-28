<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\StructureCategory;
use App\Models\StructureUser;
use App\Models\Town;
use App\Models\Structure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class StructureController extends Controller
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

        $this->title = 'structures';
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = auth()->user();

        if ($user->hasRole('superadministrator')) {
            $items = Structure::orderBy('name', 'ASC')->paginate(30);
            $towns = Town::all()->sortBy('name');
            $town_id = '';
            return view('auth.structures.index', ['items'=>$items, 'towns' => $towns, 'town_id'=> $town_id, 'title'=>$this->title]);
        } else {
            $structure_users = StructureUser::where('user_id', 'LIKE', $user->id)->first();
            $items = Structure::where('id_code', $structure_users->structure_id)->get();
            $towns = Town::all()->sortBy('name');
            $town_id = '';
            return view('auth.structures.index', ['items'=>$items, 'towns' => $towns, 'town_id'=> $town_id, 'title'=>$this->title]);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $user = auth()->user();

        if ($user->hasRole('superadministrator')) {
            $towns = Town::all()->sortBy('name');
            $categories = StructureCategory::all()->sortBy('name');
            return view('auth.structures.create', compact(['towns', 'categories']));
        } else {
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
        $user = auth()->user();

        $this->validate($request, [
            'id' => 'required',
            'name' => 'required',
            'cover' => 'required',
            'latitude' => 'required',
            'longitude' => 'required',
            'category_id' => 'required',
            'telephone' => 'required',
            'description_en' => 'required',
            'description_it' => 'required',
        ]);

        if ($user->hasRole('superadministrator')) {
            $subcategories = $request->input('subcategories');
            $subcategories = implode(',', $subcategories);

            $structure = $request->all();
            $structure['subcategories'] = $subcategories;
            $res = Structure::create($structure);

            $message = $res ? 'La Struttura ' . $structure['name'] . ' è stata inserita' : 'La Struttura ' . $structure['name'] . ' non è stato inserita';
            session()->flash('message', $message);
            return redirect()->route('structures.index');
        } else {
            return abort('403');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Structure  $structure
     * @return \Illuminate\Http\Response
     */
    public function show(Structure $structure)
    {
        $user = auth()->user();

        if ($user->hasRole('superadministrator')) {


            $subcategories = explode(',', $structure->subcategories);
            $results = [];

            foreach ($subcategories as $cat) {
                $res = DB::table('structure_categories')->where('id_code', $cat)->first();
                array_push($results, $res);
            }
            return view('auth.structures.show', ['item' => $structure], ['subcategories' => $results]);
        } else {

            $structure_users = StructureUser::where('user_id', 'LIKE', $user->id)->first();

            if ($structure->id_code == $structure_users->structure_id) {
                $subcategories = explode(',', $structure->subcategories);
                $results = [];

                foreach ($subcategories as $cat) {
                    $res = DB::table('structure_categories')->where('id_code', $cat)->first();
                    array_push($results, $res);
                }
                return view('auth.structures.show', ['item' => $structure], ['subcategories' => $results]);
            } else {
                return abort('403');
            }
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Structure  $structure
     * @return \Illuminate\Http\Response
     */
    public function edit(Structure $structure)
    {

        $user = auth()->user();

        if ($user->hasRole('superadministrator')) {

            $item = $structure;
            $towns = Town::all()->sortBy('name');
            $categories = StructureCategory::all()->sortby('name_it');

            return view('auth.structures.edit', compact('item', 'towns', 'categories', 'user'));
        } else {

            $structure_users = StructureUser::where('user_id', 'LIKE', $user->id)->first();
            if ($structure->id_code == $structure_users->structure_id) {

                $item = $structure;
                $towns = Town::all()->sortBy('name');
                $categories = StructureCategory::all()->sortby('name_it');

                return view('auth.structures.edit', compact('item', 'towns', 'categories', 'user'));
            } else {
                return abort('403');
            }

        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Structure  $structure
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Structure $structure)
    {

        $this->validate($request, [
            'id' => 'required',
            'name' => 'required',
            'cover' => 'required',
            'latitude' => 'required',
            'longitude' => 'required',
            'category_id' => 'required',
            'telephone' => 'required',
            'description_en' => 'required',
            'description_it' => 'required',
        ]);



        $subcategories = '';
        if ($request->input('subcategories') != null) {
            $subcategories = $request->input('subcategories');
            $subcategories = implode(',', $subcategories);
        }

        $data = $request->all();
        $data['subcategories'] = $subcategories;

        $res = Structure::find($structure->id_code)->update($data);


        $message = $res ? 'La Struttura ' . $structure->name . ' è stata modificata' : 'La Struttura ' . $structure->name . ' non è stata modificata';
        session()->flash('message', $message);
        return redirect()->route('structures.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Structure  $structure
     * @return \Illuminate\Http\Response
     */
    public function destroy(Structure $structure)
    {
        $user = auth()->user();
        if ($user->hasRole('superadministrator')) {
            $res = $structure->delete();
            $message = $res ? 'La Struttura ' . $structure->name . ' è stata cancellata' : 'La Categoria ' . $structure->name . ' non è stata cancellata';
            session()->flash('message', $message);
            return redirect()->route('structures.index');
        } else {
            return abort('403');
        }
    }
}
