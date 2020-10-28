<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StructureUser extends Model
{
    protected $table = 'structure_users';
    protected $primaryKey = 'id';

    protected $fillable = [
        'id',
        'structure_id',
        'user_id'
    ];

    public function structure()
    {
        return $this->belongsTo('App\Models\Structure', 'structure_id', 'id_code');
    }

    public function user()
    {
        return $this->belongsTo('App\User', 'user_id', 'id');
    }
}
