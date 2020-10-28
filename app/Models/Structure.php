<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Structure extends Model
{
    protected $table = 'structures';

    protected $primaryKey = 'id_code';

    protected $fillable = [
        'id_code',
        'id',
        'name',
        'address',
        'town_id',
        'logo',
        'cover',
        'category_id',
        'subcategories',
        'latitude',
        'longitude',
        'telephone',
        'email',
        'website',
        'tripadvisor',
        'facebook',
        'facebook_album',
        'instagram',
        'description_en',
        'description_it',
        'images',
        'sponsored',
        'visible',
    ];

    public function town()
    {
        return $this->belongsTo('App\Models\Town', 'town_id', 'id_code');
    }

    public function category()
    {
        return $this->belongsTo('App\Models\StructureCategory', 'category_id', 'id_code');
    }
}
