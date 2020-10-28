<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Town extends Model
{
    protected $table = 'towns';

    protected $primaryKey = 'id_code';

    protected $fillable=[
        'id_code',
        'id',
        'name',
        'cover',
        'latitude',
        'longitude',
        'facebook',
        'instagram_id',
        'telephone',
        'website',
        'resume_en',
        'resume_it',
        'description_en',
        'description_it',
        'images',
        'updated_at',
        'created_at'
    ];

}
