<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Template extends Model
{

    protected $table = 'templates';

    protected $primaryKey = 'id_code';

    protected $fillable = [
        'id_code',
        'id',
        'name',
        'image',
        'description',
        'visible'
    ];
}
