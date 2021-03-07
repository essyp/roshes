<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;

    public function cat(){
        return $this->belongsTo('App\Models\ProjectCategory', 'cat_id');
    }

    public function images(){
        return $this->hasMany('App\Models\Gallery', 'project_id');
    }
}
