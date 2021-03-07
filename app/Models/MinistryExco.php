<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MinistryExco extends Model
{
    use HasFactory;

    public function ministry(){
        return $this->belongsTo('App\Models\Ministry', 'ministry_id');
    }

    public function user(){
        return $this->belongsTo('App\Models\User', 'user_id');
    }
}
