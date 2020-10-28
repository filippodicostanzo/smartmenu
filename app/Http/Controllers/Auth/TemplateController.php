<?php

namespace App\Http\Controllers\Auth;

use App\Models\Template;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;

class TemplateController extends Controller
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

        $this->title = 'templates';
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $items = Template::orderBy('name', 'ASC')->paginate(30);
        return view('auth.templates.index', ['items'=>$items, 'title'=>$this->title]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if ($this->user->hasRole('superadministrator')) {

            return view('auth.templates.create', ['title'=>$this->title]);
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
            $template = new Template($request->all());
            $res = $template->save();
            $message = $res ? 'Il Template ' . $template->name . ' è stato inserito' : 'La Categoria ' . $template->name . ' non è stato inserito';
            session()->flash('message', $message);
            return redirect()->route('templates.index');
        }
        else{
            return abort('403');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Template  $template
     * @return \Illuminate\Http\Response
     */
    public function show(Template $template)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Template  $template
     * @return \Illuminate\Http\Response
     */
    public function edit(Template $template)
    {
        if ($this->user->hasRole('superadministrator')) {
            $item = $template;
            $res = Template::find($template)->first();
            $checkedVisible = $res->visible;
            return view('auth.templates.edit', ['item'=>$item, 'title'=>$this->title, 'checkedVisible'=>$checkedVisible]);
        }

        else {
            return abort('403');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Template  $template
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Template $template)
    {
        $data = $request->all();
        $res = Template::find($template->id_code)->update($data);
        $message = $res ? 'Il Template ' . $template->name . ' è stato modificato' : 'Il Template ' . $template->name . ' non è stato modificato';
        session()->flash('message', $message);
        return redirect()->route('templates.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Template  $template
     * @return \Illuminate\Http\Response
     */
    public function destroy(Template $template)
    {
        //
    }
}
