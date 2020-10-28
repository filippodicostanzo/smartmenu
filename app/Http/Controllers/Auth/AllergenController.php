<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Allergen;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;

class AllergenController extends Controller
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

        $this->title = 'allergens';
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $items = Allergen::orderBy('name_it', 'ASC')->paginate(30);
        return view('auth.allergens.index', ['items'=>$items, 'title' => $this->title]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

        if ($this->user->hasRole('superadministrator')) {
            $title = 'Allergens';
            return view('auth.allergens.create', compact('title'));
        } else {
            return abort('403');
        }
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        $allergen = new Allergen($request->all());
        $res = $allergen->save();
        $message = $res ? 'L\'Allergene ' . $allergen->name_it . ' è stata inserito' : 'L\'Allergene ' . $allergen->name_it . ' non è stata inserito';
        session()->flash('message', $message);
        return redirect()->route('allergens.index');
    }

    /**
     * Display the specified resource.
     *
     * @param Allergen $allergen
     * @return Response
     */
    public function show(Allergen $allergen)
    {
        return view('auth.allergens.show', ['item' => $allergen]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Allergen $allergen
     * @return Response
     */
    public function edit(Allergen $allergen)
    {

        if ($this->user->hasRole('superadministrator')) {

            $item = $allergen;
            $title = 'Allergen';
            $res = Allergen::find($allergen)->first();
            $checkedVisible = $res->visible;
            return view('auth.allergens.edit', compact('item', 'checkedVisible', 'title'));
        }

        else {
            return abort('403');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Allergen $allergen
     * @return Response
     */
    public
    function update(Request $request, Allergen $allergen)
    {
        $res = Allergen::find($allergen->id_code)->update($request->all());
        $message = $res ? 'L\'Allergene ' . $allergen->name_it . ' è stato modificato' : 'L\'Allergene ' . $allergen->name_it . ' non è stato modificato';
        session()->flash('message', $message);
        return redirect()->route('allergens.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Allergen $allergen
     * @return Response
     */

    public
    function destroy(Allergen $allergen)
    {
        $res = $allergen->delete();
        $message = $res ? 'L\'Allergene ' . $allergen->name_it . ' è stato cancellato' : 'L\'Allergene ' . $allergen->name_it . ' non è stato cancellato';
        session()->flash('message', $message);
        return redirect()->route('allergens.index');
    }
}
