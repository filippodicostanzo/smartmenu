<?php

use App\Http\Resources\MenuCollection;
use App\Models\Dish;
use App\Models\Menu;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*
|--------------------------------------------------------------------------
| AUTH ROUTE
|--------------------------------------------------------------------------
*/

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes(['register' => false]);


/*
|--------------------------------------------------------------------------
| PUBLIC API
|--------------------------------------------------------------------------
*/

Route::group(['prefix'=>'api'], function() {
    Route::get('qrcode/{id}', 'ApiController@qrCodes');
    Route::get('menu/{id}', 'ApiController@structureMenu');
    Route::get('allergens', 'ApiController@allergens');
    Route::get('features', 'ApiController@features');
    Route::get('towns', 'ApiController@towns');
});


/*
|--------------------------------------------------------------------------
| ADMIN ROUTE
|--------------------------------------------------------------------------
*/

Route::group(['namespace' => 'Auth', 'prefix' => 'admin', 'middleware' => ['role:superadministrator|administrator']], function () {
    Route::resource('structure_categories', 'StructureCategoryController');
    Route::resource('towns', 'TownController');
    Route::resource('structures', 'StructureController');
    Route::resource('roles', 'RoleController');
    Route::resource('users', 'UserController');
    Route::resource('structure_users', 'StructureUserController');
    Route::resource('templates', 'TemplateController');
});


/*
|--------------------------------------------------------------------------
| ADMIN & OWNER ROUTE
|--------------------------------------------------------------------------
*/

Route::group(['namespace' => 'Auth', 'prefix' => 'admin', 'middleware' => ['role:superadministrator|administrator|owner']], function () {
    Route::get('home', 'HomeController@index')->name('home');
    Route::resource('ingredients', 'IngredientController');
    Route::resource('orders', 'OrderController');
    Route::get('menus/orders', 'MenuController@orders');
    Route::resource('allergens', 'AllergenController');
    Route::resource('features', 'FeatureController');
    Route::resource('formats', 'FormatController');
    Route::resource('menus', 'MenuController');
    Route::resource('items', 'ItemController');
    Route::resource('structures', 'StructureController');
    Route::resource('item_categories', 'ItemCategoryController');
    Route::get('qr_code/print', 'QrCodeController@print')->name('printQR');
    Route::resource('qr_code', 'QrCodeController');
    Route::get('structures/filter/{city}', 'StructureController@filter');
    Route::get('/account', 'AccountController@edit')->name('account.edit');
    Route::patch('/account/update/{id}', 'AccountController@update')->name('account.update');
    Route::get('/getitemcategory/{id}', 'ItemCategoryController@getItemCategory');
    Route::get('/getitemstructure/{id}','ItemController@getItemStructure');
    Route::get('/getmenustructure/{id}','MenuController@getMenuStructure');
    Route::get('/getingredients','ItemController@getIngredientsStructure');
    Route::post('orders', 'OrderController@orders_update')->name('menuOrders');

});

/*
|--------------------------------------------------------------------------
| LARAVEL FILE MANAGER
|--------------------------------------------------------------------------
*/

Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});
