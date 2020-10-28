<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use App\Models\Structure;
use App\Models\StructureUser;
use App\Models\Town;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
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
        $this->middleware(function ($request, $next) {
            $this->user = Auth::user(); // returns user
            return $next($request);
        });

        $this->title = 'order_menu';
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
            return view('auth.orders.index', ['items'=>$items, 'towns'=>$towns, 'town_id'=>$town_id, 'title'=>$this->title]);
        } else {
            $structure_users = StructureUser::where('user_id', 'LIKE', $user->id)->first();
            $items = Structure::where('id_code', $structure_users->structure_id)->get();
            $towns = Town::all()->sortBy('name');
            $town_id = '';
            return view('auth.orders.index', ['items'=>$items, 'towns'=>$towns, 'town_id'=>$town_id, 'title'=>$this->title]);
        }
    }

    public function edit($request)
    {

        $current_structure = $this->structure_select();

        if ($this->user->hasRole('superadministrator') || $current_structure == $request) {

            $items = Menu::where('visible', 1)->where('structure_id', $request)->orderby('order')->get();
            return view('auth.orders.edit', ['items'=>$items, 'request'=>$request, 'title'=>$this->title]);
        }

        else {
            return abort(403);
        }
    }


    public function orders_update(Request $request) {

        $itemsorder = $request->input('itemsorder');
        $itemsorder = json_decode($itemsorder);



        $current_structure = $request['structure'];


        foreach ($itemsorder as $key => $value) {
            Menu::where('id_code', $value)->firstOrFail()->update(['order' => $key]);
        }

        $items = Menu::where('visible', 1)->where('structure_id', $current_structure)->orderby('order')->get();
        $message = 'L\'Ordine è stato modificato';
        session()->flash('message', $message);
        //return route('auth.orders.edit', compact('items'));

        return redirect()->route('orders.edit', $current_structure);


    }


    public function structure_select()
    {

        $structure_users = StructureUser::all();
        $current_structure = '';

        foreach ($structure_users as $structure_user) {
            if ($structure_user->user_id == $this->user->id) {
                $current_structure = $structure_user->structure_id;
            }
        }

        return $current_structure;
    }
}
