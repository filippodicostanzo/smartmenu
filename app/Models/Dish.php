<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Dish extends Model
{
    protected $table = 'dishes';

    protected $primaryKey = 'id_code';

    protected $fillable=[
        'id_code',
        'id',
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
        'description_en',
        'description_it',
        'user_id'
    ];
}
