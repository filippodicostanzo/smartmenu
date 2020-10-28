<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Item extends Model

{
    protected $table = 'items';

    protected $primaryKey = 'id_code';

    protected $fillable = [
        'id_code',
        'id',
        'category_id',
        'name_en',
        'name_it',
        'cover',
        'structure_id',
        'view',
        'visible',
        'price',
        'ingredients',
        'allergens',
        'features',
        'wine_winery',
        'wine_year',
        'format',
        'vol',
        'wine_type',
        'wine_doc',
        'wine_region',
        'description_en',
        'description_it',
        'user_id'
    ];

    public function structure()
    {
        return $this->belongsTo('App\Models\Structure', 'structure_id', 'id_code');
    }

    public function category()
    {
        return $this->belongsTo('App\Models\ItemCategory', 'category_id', 'id_code');
    }

    public function format () {
       return $this->belongsTo('App\Models\Format', 'format', 'id_code');
    }

}
