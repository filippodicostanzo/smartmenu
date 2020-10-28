<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Feature;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FeatureController extends Controller
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

        $this->title = 'features';
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $items = Feature::orderBy('name_it', 'ASC')->paginate(30);
        return view('auth.features.index', ['items' => $items, 'title' => $this->title]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if ($this->user->hasRole('superadministrator')) {
            $title = 'Features';
            return view('auth.features.create', compact('title'));
        } else {
            return abort('403');
        }

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $feature = new Feature($request->all());
        $res = $feature->save();
        $message = $res ? 'La Caratteristica ' . $feature->name_it . ' è stata inserita' : 'La Caratteristica ' . $feature->name_it . ' non è stata inserita';
        session()->flash('message', $message);
        return redirect()->route('features.index');
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Feature $feature
     * @return \Illuminate\Http\Response
     */
    public function show(Feature $feature)
    {
        return view('auth.features.show', ['item' => $feature]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Feature $feature
     * @return \Illuminate\Http\Response
     */
    public function edit(Feature $feature)
    {
        if ($this->user->hasRole('superadministrator')) {

            $item = $feature;
            $title = 'Features';
            $res = Feature::find($feature)->first();
            $checkedVisible = $res->visible;
            return view('auth.features.edit', compact('item', 'checkedVisible', 'title'));
        } else {
            return abort('403');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Feature $feature
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Feature $feature)
    {
        $res = Feature::find($feature->id_code)->update($request->all());
        $message = $res ? 'La Caratteristica ' . $feature->name_it . ' è stata modificata' : 'La Caratteristica ' . $feature->name_it . ' non è stata modificata';
        session()->flash('message', $message);
        return redirect()->route('features.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Feature $feature
     * @return \Illuminate\Http\Response
     */
    public function destroy(Feature $feature)
    {
        $res = $feature->delete();
        $message = $res ? 'La Caratteristica ' . $feature->name_it . ' è stata cancellata' : 'La Caratteristica ' . $feature->name_it . ' non è stata cancellata';
        session()->flash('message', $message);
        return redirect()->route('features.index');
    }
}
