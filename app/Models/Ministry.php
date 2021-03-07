<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ministry extends Model
{
    use HasFactory;

    public function activities(){
        return $this->hasMany('App\Models\MinistryActivity', 'ministry_id');
    }

    public function excos(){
        return $this->hasMany('App\Models\MinistryExco', 'user_id');
    }
}
