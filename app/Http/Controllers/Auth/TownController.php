<?php

namespace App\Http\Controllers\Auth;

use App\Models\Town;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class TownController extends Controller
{

    private $user;
    private $title;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::user(); // returns user
            return $next($request);
        });

        $this->title = 'towns';
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $towns = Town::orderBy('name','ASC')->paginate(20);
        return view('auth.towns.index', ['items' => $towns, 'title' =>$this->title]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('auth.towns.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'id' => 'required',
            'name' => 'required',
            'cover' => 'required',
            'latitude' => 'required',
            'longitude' => 'required',
            'instagram_id' => 'required',
            'telephone' => 'required',
            'website' => 'required',
            'resume_en' => 'required',
            'resume_it' => 'required',
            'description_en' => 'required',
            'description_it' => 'required',
            'images' => 'required'
        ]);


        $town = new Town($request->all());
        $res = $town->save();
        $message = $res ? 'La Città ' . $town->name . ' è stata inserita' : 'La Città ' . $town->name . ' non è stata inserita';
        session()->flash('message', $message);
        return redirect()->route('towns.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Town  $town
     * @return \Illuminate\Http\Response
     */
    public function show(Town $town)
    {
        return view('auth.towns.show', ['item' => $town]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Town  $town
     * @return \Illuminate\Http\Response
     */
    public function edit(Town $town)
    {
        return view('auth.towns.edit', ['item' => $town]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Town  $town
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Town $town)
    {
        $this->validate($request, [
            'id' => 'required',
            'name' => 'required',
            'cover' => 'required',
            'latitude' => 'required',
            'longitude' => 'required',
            'instagram_id' => 'required',
            'telephone' => 'required',
            'website' => 'required',
            'resume_en' => 'required',
            'resume_it' => 'required',
            'description_en' => 'required',
            'description_it' => 'required',
            'images' => 'required'
        ]);

        $res = Town::find($town->id_code)->update($request->all());
        $message = $res ? 'La Città ' . $town->name . ' è stata modificata' : 'La Città ' . $town->name . ' non è stata modificata';
        session()->flash('message', $message);
        return redirect()->route('towns.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Town  $town
     * @return \Illuminate\Http\Response
     */
    public function destroy(Town $town)
    {
        $res = $town->delete();
        $message = $res ? 'La Città ' . $town->name . ' è stata cancellata' : 'La Città ' . $town->name . ' non è stata cancellata';
        session()->flash('message', $message);
        return redirect()->route('towns.index');
    }


    /**
     * Get Public API.
     *
     * @param \App\Town $town
     * @return \Illuminate\Http\Response
     */

    public function api (Request $request) {
        $towns = Town::orderBy('name')->get();
        $townsJson = json_encode($towns);
        return $townsJson;
    }
}
