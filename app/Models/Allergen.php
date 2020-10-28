<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Allergen extends Model
{
    protected $table = 'allergens';

    protected $primaryKey = 'id_code';

    protected $fillable=[
        'id_code',
        'id',
        'name_en',
        'name_it',
        'initials_en',
        'initials_it',
        'description_en',
        'description_it',
        'icon',
        'visible',
    ];
    
}
