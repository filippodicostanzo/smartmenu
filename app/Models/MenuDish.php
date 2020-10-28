<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MenuDish extends Model
{
    protected $table = 'menu_dishes';

    protected $primaryKey = 'id_code';

    protected $fillable=[
        'id_code',
        'id',
        'name_en',
        'name_it',
        'cover',
        'structure_id',
        'visible',
        'items',
        'description_en',
        'description_it',
        'order',
        'user_id'
    ];
}
