<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Structure;
use App\Models\StructureUser;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class StructureUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $items = StructureUser::orderBy('id', 'ASC')->paginate(30);
        return view::make('auth.structure_users.index', compact('items'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $structures = Structure::all()->sortBy('name');;
        $users = User::all()->sortBy('name');;
        return view::make('auth.structure_users.create', compact('structures', 'users'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $structure_users = new StructureUser($request->all());
        $res = $structure_users->save();
        $message = $res ? 'L\'Assegazione ' . $structure_users->structure_id . ' è stata inserita' : 'La Spiaggia ' . $structure_users->structure_id . ' non è stato inserita';
        session()->flash('message', $message);
        return redirect()->route('structure_users.index');

    }

    /**
     * Display the specified resource.
     *
     * @param \App\StructureUser $structureUser
     * @return \Illuminate\Http\Response
     */
    public function show(StructureUser $structureUser)
    {
        return view('auth.structure_users.show', ['item' => $structureUser]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\StructureUser $structureUser
     * @return \Illuminate\Http\Response
     */
    public function edit(StructureUser $structureUser)
    {

        $users = User::all()->sortBy('name');;
        $structures = Structure::all()->sortBy('name');;
        $item = $structureUser;
        return view('auth.structure_users.edit', compact('item',  'users', 'structures'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\StructureUser $structureUser
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, StructureUser $structureUser)
    {
        $res = StructureUser::find($structureUser->id)->update($request->all());
        $message = $res ? 'L\'Assegnazione ' . $structureUser->id . ' è stata modificata' : 'LL\'Assegnazione ' . $structureUser->id . ' non è stata modificata';
        session()->flash('message', $message);
        return redirect()->route('structure_users.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\StructureUser $structureUser
     * @return \Illuminate\Http\Response
     */
    public function destroy(StructureUser $structureUser)
    {
        $res = $structureUser->delete();
        $message = $res ? 'L\'Assegnazione ' . $structureUser->id . ' è stata cancellata' : 'LL\'Assegnazione ' . $structureUser->id . ' non è stata cancellata';
        session()->flash('message', $message);
        return redirect()->route('structure_users.index');
    }
}
