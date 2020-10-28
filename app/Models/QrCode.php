<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class QrCode extends Model
{
    protected $table = 'qr_codes';

    protected $primaryKey = 'id_code';

    protected $fillable = [
        'id_code',
        'id',
        'active',
        'menus',
        'password_enable',
        'password',
        'password_daily',
        'visible',
        'structure_id',
        'template_id',
        'activation_start',
        'activation_end',
        'notes_en',
        'notes_it',
    ];


    public function structure()
    {
        return $this->belongsTo('App\Models\Structure', 'structure_id', 'id_code');
    }

    public function template()
    {
        return $this->belongsTo('App\Models\Template', 'template_id', 'id_code');
    }

}
