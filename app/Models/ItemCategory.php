<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ItemCategory extends Model
{
    protected $table = 'item_categories';

    protected $primaryKey = 'id_code';

    protected $fillable=[
        'id_code',
        'id',
        'name_en',
        'name_it',
        'cover',
        'fields',
        'visible',
        'description_en',
        'description_it',
        'user_id'
    ];
}
