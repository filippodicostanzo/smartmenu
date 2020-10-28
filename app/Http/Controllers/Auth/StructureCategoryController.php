<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\StructureCategory;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;

class StructureCategoryController extends Controller
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

        $this->title = 'structure_categories';
    }


    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $items = StructureCategory::orderBy('name_it', 'ASC')->paginate(30);
        return view('auth.structure_categories.index', ['items' => $items, 'title' =>$this->title]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('auth.structure_categories.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        $structureCategory = new StructureCategory($request->all());
        $res = $structureCategory->save();
        $message = $res ? 'La Categoria ' . $structureCategory->name_it . ' è stata inserita' : 'La Categoria ' . $structureCategory->name_it . ' non è stata inserita';
        session()->flash('message', $message);
        return redirect()->route('structure_categories.index');
    }

    /**
     * Display the specified resource.
     *
     * @param StructureCategory $structureCategory
     * @return Response
     */
    public function show(StructureCategory $structureCategory)
    {
        return view('auth.structure_categories.show', ['item' => $structureCategory]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param StructureCategory $structureCategory
     * @return Response
     */
    public function edit(StructureCategory $structureCategory)
    {
        $item = $structureCategory;
        $res = StructureCategory::find($structureCategory)->first();
        $checkedVisible = $res->visible;
        return view('auth.structure_categories.edit', compact('item', 'checkedVisible'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param StructureCategory $structureCategory
     * @return Response
     */
    public function update(Request $request, StructureCategory $structureCategory)
    {
        $res = StructureCategory::find($structureCategory->id_code)->update($request->all());
        $message = $res ? 'La Categoria ' . $structureCategory->name_it . ' è stata modificata' : 'La Categoria ' . $structureCategory->name_it . ' non è stata modificata';
        session()->flash('message', $message);
        return redirect()->route('structure_categories.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param StructureCategory $structureCategory
     * @return Response
     * @throws Exception
     */
    public function destroy(StructureCategory $structureCategory)
    {
        $res = $structureCategory->delete();
        $message = $res ? 'La Categoria ' . $structureCategory->name_it . ' è stata cancellata' : 'La Categoria ' . $structureCategory->name_it . ' non è stata cancellata';
        session()->flash('message', $message);
        return redirect()->route('structure_categories.index');
    }


}
