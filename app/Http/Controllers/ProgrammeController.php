<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Programme;

class ProgrammeController extends Controller
{
    public function getProgrammes() {
        $data = Programme::where('status',1)->orderBy('id', 'DESC')->get();
        return view('front/programmes', compact('data'));
    }

    public function getDetails($id) {
        $data = Programme::where('slug',$id)->first();
        return view('front/programme-details', compact('data'));
    }
}
