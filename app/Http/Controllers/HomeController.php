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
use App\Models\Banner;
use App\Models\Company;
use App\Models\Blog;
use App\Models\Service;
use App\Models\Project;
use App\Models\Team;
use App\Models\Gallery;
use App\Models\Enquiry;

class HomeController extends Controller
{
    public function getHome() {
        $data = Banner::where('status',1)->orderBy('id', 'DESC')->get();
        return view('front/index', compact('data'));
    }

    public function getAbout() {
        $data = Company::where('id',1)->first();
        $services = Service::where('status',1)->where('featured',1)->limit(3)->get();
        $teams = Team::where('status',1)->where('featured',1)->limit(3)->get();
        return view('front/about', compact('data','services','teams'));
    }

    public function getPhpInfo() {
        $info = phpinfo();
        return view('front/php-info', compact('info'));
    }

    public function getServices() {
        $data = Service::where('status',1)->get();
        return view('front/services', compact('data'));
    }

    public function getServiceDetails($id) {
        $data = Service::where('slug',$id)->first();
        return view('front/service-detail', compact('data'));
    }

    public function getTeams() {
        $data = Team::where('status',1)->get();
        return view('front/teams', compact('data'));
    }

    public function getContact() {
        $data = Company::first();
        return view('front/contact', compact('data'));
    }

    public function getProjects() {
        $data = Project::where('status', '!=', INACTIVE)->paginate(10);
        return view('front/projects', compact('data'));
    }

    public function getProjectDetail($id) {
        $data = Project::where('slug',$id)->first();
        return view('front/project-detail', compact('data'));
    }

    public function sendEnquiry(Request $request){
        $validator = Validator::make($request->all(), [
            'email' => ['required', 'email', 'min:7', 'max:80', 'regex:/^[^\s@]+@[^\s@]+\.[^\s@]+$/'],
            'name' => 'required|string',
            'tel' => ['required','min:11','regex:/^[\+\d]?(?:[\d()]*)$/','max:14'],
            'message' => 'required',
        ]);
        if ($validator->fails()){
            $response = array(
                "status" => "unsuccessful",
                "message" => $validator->messages()->first(),
                );
                return Response::json($response);
        }
        
        $item = new Enquiry();
        $item->name = $request->name;
        $item->email = $request->email;
        $item->tel = $request->tel;
        $item->message = $request->message;
        $item->status = 1;
        if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "Thanks for contacting us. One of us will contact you shortly",
            );
                $this->sendContactMail("Thanks for contacting us",$request->email,$request->name);
            return Response::json($response); //return status response as json
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error sending message . Please try again",
            );
            return Response::json($response); //return status response as json
        }
    }
    
    public function sendContactMail($subject,$email,$name){
        $data = array(
                'name'=> $name,
                'email'=> $email,
                'subject'=> $subject
        );
    
        Mail::send('mails/contact', $data, function($message)
            use($email,$subject,$name) {
                $com = Company::where('id','1')->first();
                $message->from($com->email, $com->fullname);
                $message->to($email, $name)->subject($subject);
        });
    }
}
