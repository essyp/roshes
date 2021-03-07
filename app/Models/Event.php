<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;

    public function images(){
        return $this->hasMany('App\Models\EventImage', 'event_id');
    }
}
