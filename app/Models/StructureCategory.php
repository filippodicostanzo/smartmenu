<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StructureCategory extends Model
{
    protected $table = 'structure_categories';

    protected $primaryKey = 'id_code';

    protected $fillable=[
        'id_code',
        'id',
        'name_en',
        'name_it',
        'description_en',
        'description_it',
        'cover',
        'icon',
        'icon_svg',
        'map',
        'visible',
    ];
}
