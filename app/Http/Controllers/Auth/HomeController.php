<?php

namespace App\Http\Controllers\Auth;

use App\Models\Ingredient;
use App\Models\Structure;
use App\Models\StructureUser;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{

    private $user;
    private $title;

    /**
     * Create a new controller instance.
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

        $this->title = 'Menu';
    }


    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $counter = [];
        $counter['towns'] = DB::table('towns')->count();
        $counter['structures'] = DB::table('structures')->count();
        $counter['structure_categories'] = DB::table('structure_categories')->count();
        $counter['allergens'] = DB::table('allergens')->count();
        $counter['features'] = DB::table('features')->count();
        $counter['item_categories'] = DB::table('item_categories')->count();
        $counter['users'] = DB::table('users')->count();
        $counter['roles'] = DB::table('roles')->count();
        $counter['structure_users'] = DB::table('structure_users')->count();
        $counter['formats'] = DB::table('formats')->count();
        $counter['templates'] = DB::table('templates')->count();

        if ($this->user->hasRole('superadministrator')) {
            $counter['ingredients'] = DB::table('ingredients')->count();
            $counter['items'] = DB::table('items')->count();
            $counter['menus'] = DB::table('menus')->count();
            $counter['qr_code'] = DB::table('qr_codes')->count();
        } else {
            $users = User::all();
            $query = DB::table('ingredients');
            $query->where('user_id', $this->user->id);
            foreach ($users as $user) {
                if ($user->hasRole('superadministrator')) {
                    $query->orWhere('user_id', $user->id);
                }
            }
            $counter['ingredients'] = $query->count();

            $current_structure = $this->structure_select();

            $counter['items'] = DB::table('items')->where('structure_id', $current_structure)->count();
            $counter['menus'] = DB::table('menus')->where('structure_id', $current_structure)->count();
            $counter['qr_code'] = DB::table('qr_codes')->where('structure_id', $current_structure)->count();

        }

        return view('home', compact('counter'));
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
