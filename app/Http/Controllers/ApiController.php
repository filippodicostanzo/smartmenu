<?php

namespace App\Http\Controllers;

use App\Models\Allergen;
use App\Models\Feature;
use App\Models\Format;
use App\Models\Ingredient;
use App\Models\Item;
use App\Models\ItemCategory;
use App\Models\Menu;
use App\Models\QrCode;
use App\Models\Structure;
use App\Models\Template;
use App\Models\Town;

class ApiController extends Controller
{

    public function qrCodes($request)
    {
        $output = QrCode::where('id', $request)->first();
        $structure = Structure::where('id_code', $output->structure_id)->first();
        $template = Template::where('id_code', $output->template_id)->first();
        $output['town'] = Town::where('id_code', $structure->town_id)->first();
        if ($structure->subcategories != '') {
            $temp_subcategories = explode(',', $structure->subcategories);
            $array_subcategories = [];

            foreach ($temp_subcategories as $temp_subcategory) {
                $subcategories = ItemCategory::where('id_code', $temp_subcategory)->first();
                array_push($array_subcategories, $temp_subcategory);
            }
            $structure->original_subcategories = $array_subcategories;
        } else {
            $structure->original_subcategories = '';
        }

        $output['structure'] = $structure;
        $output['template'] = $template;

        $qr_menus = explode(',', $output->menus);
        $array_menu = [];

        foreach ($qr_menus as $qr_menu) {
            $res = Menu::where('id_code', $qr_menu)->first();
            array_push($array_menu, $res);
        }


        foreach ($array_menu as $menu) {
            $array_items = [];
            $temp_items = explode(',', $menu['items']);
            foreach ($temp_items as $temp_item) {
                $array_ingredients = [];
                $array_allergens = [];
                $array_features = [];
                $items = Item::where('id_code', $temp_item)->first();


                if ($items != null) {
                    $items['original_format'] = Format::where('id_code', $items->format)->first();
                    $temp_ingredients = explode(',', $items['ingredients']);
                    $temp_allergens = explode(',', $items['allergens']);
                    $temp_features = explode(',', $items['features']);

                    foreach ($temp_ingredients as $temp_ingredient) {
                        $ingredients = Ingredient::where('id_code', $temp_ingredient)->first();
                        array_push($array_ingredients, $ingredients);
                    }

                    foreach ($temp_allergens as $temp_allergen) {
                        $allergens = Allergen::where('id_code', $temp_allergen)->first();
                        array_push($array_allergens, $allergens);
                    }

                    foreach ($temp_features as $temp_feature) {
                        $features = Feature::where('id_code', $temp_feature)->first();
                        array_push($array_features, $features);
                    }

                    $items['original_ingredients'] = $array_ingredients;
                    $items['original_allergens'] = $array_allergens;
                    $items['original_features'] = $array_features;

                    array_push($array_items, $items);
                }

            }
            $menu['original_items'] = $array_items;
            //array_push($array_menu, $menu);
        }

        $output['original_menus'] = $array_menu;


        return $output->toJson();


    }

    public function structureMenu($request)
    {

        $output = Structure::where('id', $request)->first();

        $output['town'] = Town::where('id_code', $output->town_id)->first();
        $output['category'] = ItemCategory::where('id_code', $output->category_id)->first();

        $output['qrcode'] = QrCode::where('structure_id', $output['id_code'])->first();


        $temp_subcategories = explode(',', $output['subcategories']);
        $array_subcategories = [];

        foreach ($temp_subcategories as $temp_subcategory) {
            $subcategories = ItemCategory::where('id_code', $temp_subcategory)->first();
            array_push($array_subcategories, $temp_subcategory);
        }

        $output['original_subcategories'] = $array_subcategories;

        $output['menus'] = [];

        $menus = Menu::where('structure_id', $output['id_code'])->orderby('order')->get();
        //$array_items = [];
        $array_menu = [];


        foreach ($menus as $menu) {
            $array_items = [];
            $temp_items = explode(',', $menu['items']);
            foreach ($temp_items as $temp_item) {
                $array_ingredients = [];
                $array_allergens = [];
                $array_features = [];
                $items = Item::where('id_code', $temp_item)->first();

                $temp_ingredients = explode(',', $items['ingredients']);
                $temp_allergens = explode(',', $items['allergens']);
                $temp_features = explode(',', $items['features']);

                foreach ($temp_ingredients as $temp_ingredient) {
                    $ingredients = Ingredient::where('id_code', $temp_ingredient)->first();
                    array_push($array_ingredients, $ingredients);
                }

                foreach ($temp_allergens as $temp_allergen) {
                    $allergens = Allergen::where('id_code', $temp_allergen)->first();
                    array_push($array_allergens, $allergens);
                }

                foreach ($temp_features as $temp_feature) {
                    $features = Feature::where('id_code', $temp_feature)->first();
                    array_push($array_features, $features);
                }

                $items['original_ingredients'] = $array_ingredients;
                $items['original_allergens'] = $array_allergens;
                $items['original_features'] = $array_features;

                array_push($array_items, $items);

            }
            $menu['original_items'] = $array_items;
            array_push($array_menu, $menu);
        }

        $output['menus'] = $array_menu;


        return $output->toJson();
    }

    public function allergens()
    {
        return Allergen::all()->toJson();
    }


    public function features()
    {
        return Feature::all()->toJson();
    }

    public function towns()
    {
        return Town::all()->toJson();
    }
}
