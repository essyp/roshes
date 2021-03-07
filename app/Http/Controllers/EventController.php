<?php

namespace App\Http\Controllers;

use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Hash;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;
use Mail;
use Session;
use GuzzleHttp\Exception\GuzzleException;
use App\Models\Event;

class EventController extends Controller
{
    public function getEvents() {
        $data = Event::where('status',1)->orderBy('id', 'DESC')->get();
        return view('front/events', compact('data'));
    }

    public function getDetails($id) {
        $data = Event::where('slug',$id)->first();
        return view('front/event-details', compact('data'));
    }
}
