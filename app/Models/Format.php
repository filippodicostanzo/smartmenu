<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Format extends Model
{
    protected $table = 'formats';

    protected $primaryKey = 'id_code';

    protected $fillable=[
        'id_code',
        'id',
        'icon',
        'name_en',
        'name_it',
        'visible',
    ];
}
