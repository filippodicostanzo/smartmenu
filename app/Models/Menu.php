<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $table = 'menus';

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
        'order',
        'price',
        'price_view',
        'description_en',
        'description_it',
        'user_id'
    ];

    public function structure()
    {
        return $this->belongsTo('App\Models\Structure', 'structure_id', 'id_code');
    }
}
