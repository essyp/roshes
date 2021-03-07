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
use App\Models\Admin;
use App\Models\User;
use App\Models\Product;
use App\Models\Order;
use App\Models\OrderedProduct;
use App\Models\Blog;
use App\Models\Ministry;
use App\Models\MinistryActivity;
use App\Models\MinistryExco;
use App\Models\Payment;
use App\Models\PaymentGateway;
use App\Models\Event;
use App\Models\EventImage;
use App\Models\ActivityLog;
use App\Models\BlogCategory;
use App\Models\Company;
use App\Models\ProductCategory;
use App\Models\Banner;
use App\Models\Programme;
use App\Models\Bank;
use App\Models\Donation;
use App\Models\ParishMessage;
use App\Models\Enquiry;
use App\Models\Newsletter;
use App\Models\Service;
use App\Models\Project;
use App\Models\ProjectCategory;
use App\Models\Team;
use App\Models\Gallery;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }

    public function log($action){
        $log = new ActivityLog();
		$log->user_id = Auth::guard("admin")->user()->id;
		$log->type = ADMIN;
		$log->action = $action;
		$log->computer_ip = \Request::ip();
		$log->session_id = \Session::getId();

		$log->save();
    }

    public function index(Request $request){
        $totalOrder = Order::count();
        $totalAmount = Payment::where('status', 1)->sum('amount');
		$totalBlog = Blog::count();
        $totalProduct = Product::count();
        $totalUser = User::count();
        $totalMinistry = Ministry::count();
        $totalEvent = Event::count();
        $orders = Order::orderBy('id','desc')->limit(7)->get();
        $users = User::orderby('id', 'desc')->limit(5)->get();
        $totalService = Service::count();
        $totalProject = Project::count();
        $totalEnquiry = Enquiry::count();
        $enquiry = Enquiry::orderby('id', 'desc')->limit(5)->get();

        return view('admin/index', compact('totalOrder','totalAmount','totalBlog','totalProduct','totalUser','totalMinistry','totalEvent','orders','users','totalService','totalProject','totalEnquiry','enquiry'));
    }
    
    public function allAdminUsers() {
        $admin = Admin::orderBy('id','desc')->get();
        return view('admin/adminusers', compact('admin'));
    }

    //Create a new admin user
	public function createAdmin(Request $request){
       
		$admin = new Admin();
        $admin->fname = $request->fname;
        $admin->lname = $request->lname;
        $admin->tel = $request->tel;
        $admin->email = $request->email;
        $admin->role = $request->role;
        $admin->address = $request->address;
        $admin->status = 1;
        $admin->password = bcrypt($request->password);
        $admin->created_by = Auth::guard("admin")->user()->id;

		if($admin->save()){

            $response = array(
                "status" => "success",
                "message" => "Admin User was created successfully",
            );

            $this->log("Added new admin. Email - ".$request->email);

            return Response::json($response);
        } else {
            $response = array(
                "status" => "Unsuccessfull",
                "message" => "Error creating user. please try again",
            );
            return Response::json($response);
        }
    }

    public function updateAdmin(Request $request){
		$image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/users";
            $image->move($path, $imageName);
        }

		$admin = Admin::where('id',$request->id)->first();
		$admin->fname = $request->fname;
        $admin->lname = $request->lname;
        $admin->tel = $request->tel;
        $admin->email = $request->email;
        $admin->address = $request->address;
        $admin->role = $request->role;
        if(!is_null($image) && $image != ''){
            $admin->image = $imageName;
        }
		if($admin->save()){

            $response = array(
                "status" => "success",
                "message" => "updated successfully",
            );
            $this->log("Admin user updated account details. Email - ".$request->email);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating account",
            );
            return Response::json($response);
        }

    }

    public function updateAdminRole(Request $request){
		$admin = Admin::where('id',$$request->id)->first();
		$admin->role = $request->role;
        if($admin->save()){

            $response = array(
                "status" => "success",
                "message" => "Role updated successfully",
            );
            $this->log("Admin user role updated. Email - ".$request->email);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating User",
            );
            return Response::json($response);
        }

    }

    public function getBlog() {
        $category = BlogCategory::where('status',1)->get();
        $data = Blog::orderBy('id', 'DESC')->get();
        return view('admin/blog', compact('category','data'));
    }

    public function updateBlog(Request $request){
		
		$image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/blog";
            $image->move($path, $imageName);
        }

		$item = Blog::where('id',$request->id)->first();
		$item->title = $request->title;
        $item->cat_id = $request->cat_id;
        $item->keywords = $request->keywords;
        $item->description = $request->description;
        $item->video_id = $request->video_id;
        $item->is_video = $request->is_video;
        if(!is_null($image) && $image != ''){
            $item->image = $imageName;
        }
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "blog was updated successfully",
            );
            $this->log("Blog post updated. Title - ".$request->title);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating blog",
            );
            $this->log("Updating blog post failed. Title - ".$request->title);
            return Response::json($response);
        }

	}

    public function createBlog(Request $request){
		
		$image = $request->file('image');
		if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/blog";
            $image->move($path, $imageName);
        }

		$item = new Blog();
		$item->title = $request->title;
        $item->cat_id = $request->cat_id;
        $item->cat_id = $request->cat_id;
        $item->keywords = $request->keywords;
        $item->status = ACTIVE;
        $item->description = $request->description;
        $item->slug = Str::slug($request->title).'-'.time();
        $item->created_by = Auth::guard("admin")->user()->id;
        $item->video_id = $request->video_id;
        $item->is_video = $request->is_video;
		if(!is_null($image) && $image != ''){
            $item->image = $imageName;
        }

		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "Blog was created successfully",
            );

            $this->log("Added new blog post. Title - ".$request->title);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error creating blog. Please try again",
            );
            $this->log("Creating new blog post failed. Title - ".$request->title);
            return Response::json($response);
        }
    }

    public function getBlogCategory() {
        $data = BlogCategory::orderBy('id', 'DESC')->get();
        return view('admin/blog-category', compact('data'));
    }

    public function createBlogCategory(Request $request){
		$item = new BlogCategory();
        $item->name = $request->name;
        $item->slug = Str::slug($request->name).'-'.time();
        $item->created_by = Auth::guard("admin")->user()->id;
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "Blog category was created successfully",
            );

            $this->log("Added new blog category. Title - ".$request->name);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error creating category. Please try again",
            );
            return Response::json($response);
        }
    }

    public function updateBlogCategory(Request $request){
		$item = BlogCategory::where('id',$request->id)->first();
        $item->name = $request->name;
        // $item->slug = Str::slug($request->name);
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "category updated successfully",
            );
            $this->log("blog category updated. Title - ".$request->name);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating category",
            );
            return Response::json($response);
        }

    }
    
    public function updateCompany(Request $request){
		
		$image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = 'logo'.'_'.time() . '.' . $image->getClientOriginalExtension();
            $path = "images/logo";
            $image->move($path, $imageName);
        }

        $favicon = $request->file('favicon');
        if(!is_null($favicon) && $favicon != ''){
            $faviconName  = 'favicon'.'_'.time() . '.' . $favicon->getClientOriginalExtension();
            $path = "images/logo";
            $favicon->move($path, $faviconName);
        }

        $about = $request->file('about');
        if(!is_null($about) && $about != ''){
            $aboutName  = 'about'.'_'.time() . '.' . $about->getClientOriginalExtension();
            $path = "images/logo";
            $about->move($path, $aboutName);
        }

        $background = $request->file('background');
        if(!is_null($background) && $background != ''){
            $backgroundName  = 'background'.'_'.time() . '.' . $background->getClientOriginalExtension();
            $path = "images/logo";
            $background->move($path, $backgroundName);
        }
       
		$item = Company::where('id',$request->id)->first();
		$item->fullname = $request->fullname;
        $item->shortname = $request->shortname;
        $item->email = $request->email;
        $item->email2 = $request->email2;
        $item->tel = $request->tel;
        $item->tel2 = $request->tel2;
        $item->tel3 = $request->tel3;
        $item->address = $request->address;
        $item->address2 = $request->address2;
        $item->shortdescrpt = $request->shortdescrpt;
        $item->fulldescrpt = $request->fulldescrpt;
        $item->vision = $request->vision;
        $item->mission = $request->mission;
        $item->value = $request->value;
        $item->keywords = $request->keywords;
        $item->meta_descrpt = $request->meta_descrpt;
        $item->currency = $request->currency;
        $item->youtube_video = $request->youtube_video;
        $item->terms = $request->terms;
        $item->privacy = $request->privacy;
        if(!is_null($image) && $image != ''){
            $item->logo = $imageName;
        }
        if(!is_null($about) && $about != ''){
            $item->about = $aboutName;
        }
        if(!is_null($favicon) && $favicon != ''){
            $item->favicon = $faviconName;
        }
        if(!is_null($background) && $background != ''){
            $item->background_image = $backgroundName;
        }
        if($item->save()){

		$response = array(
			"status" => "success",
			"message" => "updated successfully",
        );
        $this->log("Updated Ministry details.");
        return Response::json($response); //return status response as json
    } else {
        $response = array(
			"status" => "unsuccessful",
			"message" => "Error updating",
        );
        return Response::json($response); //return status response as json
    }

    }

    public function getMinistrySettings() {
        $com = Company::first();
        return view('admin/company', compact('com'));
    }

    public function updateSocials(Request $request){
		$item = Company::where('id',1)->first();
		$item->facebook = $request->facebook;
        $item->twitter = $request->twitter;
        $item->instagram = $request->instagram;
        $item->linkedin = $request->linkedin;
        $item->youtube = $request->youtube;
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "updated successfully",
            );
            $this->log("Social accounts updated");
            return Response::json($response); //return status response as json
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating",
            );
            return Response::json($response); //return status response as json
        }

    }

    public function getSocials() {
        $com = company::where('id',1)->first();
        return view('admin/socials', compact('com'));
    }

    public function updateSettings(Request $request){
		$item = Company::where('id',1)->first();
		$item->mail_host = $request->mail_host;
        $item->mail_username = $request->mail_username;
        $item->mail_password = $request->mail_password;
        $item->mail_port = $request->mail_port;
        $item->mail_secure = $request->mail_secure;
        $item->mail_debug = $request->mail_debug;
        $item->mail_auth = $request->mail_auth;
        $item->sms_host = $request->sms_host;
        $item->sms_username = $request->sms_username;
        $item->sms_password = $request->sms_password;
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "updated successfully",
            );
            $this->log("Message settings updated.");
            return Response::json($response); //return status response as json
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating",
            );
            return Response::json($response); //return status response as json
        }

    }

    public function getSettings() {
        $com = Company::where('id',1)->first();
        return view('admin/message-settings', compact('com'));
    }

    public function getMinistries() {
        $data = Ministry::orderBy('id', 'desc')->get();
        return view('admin/ministries', compact('data'));
    }

    public function createMinistry(Request $request){
		$image = $request->file('image');
		if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/ministries";
            $image->move($path, $imageName);
        }

		$item = new Ministry();
		$item->name = $request->name;
        $item->description = $request->description;
        $item->slug = Str::slug($request->name).'-'.time();
        $item->created_by = Auth::guard("admin")->user()->id;
        if(!is_null($image) && $image != ''){
           $item->image = $imageName;
        }
		if($item->save()){
            if(!empty($request->activity_name)){
                for($i=0;$i<count($request->activity_name);$i++){
                    $act = new MinistryActivity();
                    $act->activity_name = $request->activity_name[$i];
                    $act->activity_day = $request->activity_day[$i];
                    $act->start_time = $request->start_time[$i];
                    $act->end_time = $request->end_time[$i];
                    $act->description = $request->description[$i];
                    $act->status = $request->status[$i];
                    $act->ministry_id = $item->id;
                    $act->created_by = Auth::guard("admin")->user()->id;
                    $act->save();
                }
            }
            if(!empty($request->user_id)){
                for($i=0;$i<count($request->user_id);$i++){
                    $exco = new MinistryExco();
                    $exco->user_id = $request->user_id[$i];
                    $exco->position = $request->position[$i];
                    $exco->ministry_id = $item->id;
                    $exco->created_by = Auth::guard("admin")->user()->id;
                    $exco->save();
                }
            }
            $response = array(
                "status" => "success",
                "message" => "Ministry was created successfully",
            );

            $this->log("Added new ministry. Title - ".$request->name);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error creating ministry. Please try again",
            );
            $this->log("Creating new ministry failed. Name - ".$request->name);
            return Response::json($response);
        }
    }

    public function updateMinistry(Request $request){
		$image = $request->file('image');
		if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/ministries";
            $image->move($path, $imageName);
        }

		$item = Ministry::where('id', $request->id)->first();
		$item->name = $request->name;
        $item->description = $request->description;
        if(!is_null($image) && $image != ''){
            $item->image = $imageName;
        }
		if($item->save()){
            if(!empty($request->activity_name)){
                for($i=0;$i<count($request->activity_name);$i++){
                    $feat = MinistryActivity::where('id',$request->activity_id)->first();
                    $feat->activity_name = $request->activity_name[$i];
                    $feat->activity_day = $request->activity_day[$i];
                    $feat->start_time = $request->start_time[$i];
                    $feat->end_time = $request->end_time[$i];
                    $feat->description = $request->description[$i];
                    $feat->status = $request->status[$i];
                    $feat->ministry_id = $item->id;
                    $feat->save();
                }
            }
            if(!empty($request->user_id)){
                for($i=0;$i<count($request->user_id);$i++){
                    $exco = MinistryExco::where('id',$request->exco_id)->first();
                    $exco->user_id = $request->user_id[$i];
                    $exco->position = $request->position[$i];
                    $exco->ministry_id = $item->id;
                    $exco->save();
                }
            }
            $response = array(
                "status" => "success",
                "message" => "Ministry was updated successfully",
            );

            $this->log("updated ministry with. Title - ".$item->name);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating ministry. Please try again",
            );
            $this->log("updating ministry failed. Name - ".$request->name);
            return Response::json($response);
        }
    }

    public function getEvents() {
        $data = Event::orderBy('id', 'desc')->get();
        return view('admin/events', compact('data'));
    }

    public function createEvent(Request $request){
        $image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/events";
            $image->move($path, $imageName);
        }
		$item = new Event();
        $item->title = $request->title;
        $item->description = $request->description;
        $item->start_date = $request->start_date;
        $item->end_date = $request->end_date;
        $item->start_time = $request->start_time;
        $item->end_time = $request->end_time;
        $item->venue = $request->venue;
        $item->slug = Str::slug($request->title).'-'.time();
        $item->created_by = Auth::guard("admin")->user()->id;
        if(!is_null($image) && $image != ''){
            $item->image = $imageName;
        }

		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "Event was created successfully",
            );

            $this->log("Added new event. Title - ".$request->title);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error creating event. Please try again",
            );
            return Response::json($response);
        }
    }

    public function updateEvent(Request $request){
        $image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/events";
            $image->move($path, $imageName);
        }
		$item = Event::where('id',$request->id)->first();
        $item->title = $request->title;
        $item->description = $request->description;
        $item->start_date = $request->start_date;
        $item->end_date = $request->end_date;
        $item->start_time = $request->start_time;
        $item->end_time = $request->end_time;
        $item->venue = $request->venue;
        if(!is_null($image) && $image != ''){
            $item->image = $imageName;
        }

		if($item->save()){
            if($request->hasfile('images')) {
                foreach($request->file('images') as $image) {
                    $name= time() . '.' . str::random(6) . '.' .$image->getClientOriginalExtension();
                    $path = "images/events";
                    $image->move($path, $name);

                    $e_image = new eventImage();
                    $e_image->event_id = $item->id;
                    $e_image->image = $name;
                    $e_image->save();
                }
            }

            $response = array(
                "status" => "success",
                "message" => "Event was updated successfully",
            );

            $this->log("updated event. Title - ".$request->title);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating event. Please try again",
            );
            return Response::json($response);
        }
    }

    public function getUsers() {
        $data = User::orderBy('id', 'desc')->get();
        return view('admin/users', compact('data'));
    }

    public function getProducts() {
        $data = Product::orderBy('id', 'desc')->get();
        $cat = ProductCategory::orderBy('id', 'desc')->get();
        return view('admin/products', compact('data','cat'));
    }

    public function createProduct(Request $request){
        $image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/products";
            $image->move($path, $imageName);
        }

        if(!(Product::where('key','PD-0001001')->first())){
            $inv_number='PD-0001001';
        }
        else{
            $number=Product::get()->last()->key;
            $number=str_replace('PD-',"",$number);
            $number=str_pad($number+1, 7, '0', STR_PAD_LEFT);
            $inv_number='PD-'.$number;
            
        }

		$item = new Product();
        $item->pname = $request->pname;
        $item->description = $request->description;
        $item->cat_id = $request->cat_id;
        $item->key = $inv_number;
        $item->price = $request->price;
        $item->keywords = $request->keywords;
        $item->slug = Str::slug($request->pname).'-'.time();
        $item->created_by = Auth::guard("admin")->user()->id;
        if(!is_null($image) && $image != ''){
            $item->image = $imageName;
        }

		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "Product created successfully",
            );

            $this->log("Added new product with Key - ".$request->key);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error creating product. Please try again",
            );
            return Response::json($response);
        }
    }

    public function updateProduct(Request $request){
        $image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/products";
            $image->move($path, $imageName);
        }

		$item = Product::where('id',$request->id)->first();
        $item->pname = $request->pname;
        $item->description = $request->description;
        $item->cat_id = $request->cat_id;
        $item->price = $request->price;
        $item->keywords = $request->keywords;
        if(!is_null($image) && $image != ''){
            $item->image = $imageName;
        }

		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "product updated successfully",
            );

            $this->log("updated product with key - ".$item->key);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating product. Please try again",
            );
            return Response::json($response);
        }
    }

    public function getProductCategory() {
        $data = ProductCategory::orderBy('id', 'desc')->get();
        return view('admin/product-category', compact('data'));
    }

    public function createProductCategory(Request $request){
		$item = new ProductCategory();
        $item->name = $request->name;
        $item->slug = Str::slug($request->name).'-'.time();
        $item->created_by = Auth::guard("admin")->user()->id;
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "created successfully",
            );

            $this->log("Added new product category with Title - ".$request->name);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error creating category. Please try again",
            );
            return Response::json($response);
        }
    }

    public function updateProductCategory(Request $request){
		$item = ProductCategory::where('id',$request->id)->first();
        $item->name = $request->name;
        // $item->slug = Str::slug($request->name);
        if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "updated successfully",
            );

            $this->log("updated product category with Title - ".$request->name);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating category. Please try again",
            );
            return Response::json($response);
        }
    }

    public function getBanners() {
        $data = Banner::orderBy('id', 'desc')->get();
        return view('admin/slides', compact('data'));
    }

    public function createBanner(Request $request){
        $image = $request->file('image');
		$imageName  = time() . '.' . $image->getClientOriginalExtension();
		$path = "images/banners";
		$image->move($path, $imageName);

		$item = new Banner();
        $item->title = $request->title;
        $item->button_name = $request->button_name;
        $item->link = $request->link;
        $item->description = $request->description;
        $item->image = $imageName;
        $item->created_by = Auth::guard("admin")->user()->id;
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "uploaded successfully",
            );

            $this->log("Added new home image banner.");
            return Response::json($response); //return status response as json
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error uploading banner. Please try again",
            );
            return Response::json($response); //return status response as json
        }
    }

    public function updateBanner(Request $request){
		$image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/banners";
            $image->move($path, $imageName);
        }

		$item = Banner::where('id',$request->id)->first();
        $item->title = $request->title;
        $item->button_name = $request->button_name;
        $item->link = $request->link;
        $item->description = $request->description;
        if(!is_null($image) && $image != ''){
            $item->image = $imageName;
        }
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "updated successfully",
            );
            $this->log("Home banner image updated");
            return Response::json($response); //return status response as json
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating banner",
            );
            return Response::json($response); //return status response as json
        }

    }

    public function getProgrammes() {
        $data = Programme::orderBy('id', 'desc')->get();
        return view('admin/programmes', compact('data'));
    }

    public function createProgramme(Request $request){
        $item = new Programme();
        $item->slug = Str::slug($request->title).'-'.time();
        $item->title = $request->title;
        $item->week_day = $request->week_day;
        $item->venue = $request->venue;
        $item->start_time = $request->start_time;
        $item->end_time = $request->end_time;
        $item->description = $request->description;
        $item->created_by = Auth::guard("admin")->user()->id;
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "created successfully",
            );

            $this->log("Added new programme with title ".$request->title);
            return Response::json($response); //return status response as json
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error creating programme. Please try again",
            );
            return Response::json($response); //return status response as json
        }
    }

    public function updateProgramme(Request $request){
        $item = Programme::where('id',$request->id)->first();
        $item->title = $request->title;
        $item->week_day = $request->week_day;
        $item->venue = $request->venue;
        $item->start_time = $request->start_time;
        $item->end_time = $request->end_time;
        $item->description = $request->description;
        if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "updated successfully",
            );

            $this->log("updated programme with title ".$request->title);
            return Response::json($response); //return status response as json
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating programme. Please try again",
            );
            return Response::json($response); //return status response as json
        }
    }

    public function getBanks() {
        $data = Bank::orderBy('id', 'desc')->get();
        return view('admin/bank', compact('data'));
    }

    public function createBank(Request $request){
        $item = new Bank();
        $item->bank_name = $request->bank_name;
        $item->account_name = $request->account_name;
        $item->account_no = $request->account_no;
        $item->created_by = Auth::guard("admin")->user()->id;
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "created successfully",
            );

            $this->log("Added new bank with name ".$request->bank_name);
            return Response::json($response); //return status response as json
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error creating bank. Please try again",
            );
            return Response::json($response); //return status response as json
        }
    }

    public function updateBank(Request $request){
        $item = Bank::where('id',$request->id)->first();
        $item->bank_name = $request->bank_name;
        $item->account_name = $request->account_name;
        $item->account_no = $request->account_no;
        if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "updated successfully",
            );

            $this->log("updated bank with name ".$request->bank_name);
            return Response::json($response); //return status response as json
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating bank. Please try again",
            );
            return Response::json($response); //return status response as json
        }
    }

    public function getDonations() {
        $data = Donation::orderBy('id', 'desc')->get();
        return view('admin/donations', compact('data'));
    }

    public function getPayments() {
        $data = Payment::orderBy('id', 'desc')->get();
        return view('admin/payments', compact('data'));
    }

    public function getLog() {
        $data = ActivityLog::orderBy('id', 'desc')->get();
        return view('admin/log', compact('data'));
    }

    public function getParishMessages() {
        $data = ParishMessage::orderBy('id', 'desc')->get();
        return view('admin/parish-messages', compact('data'));
    }

    public function getEnquiries() {
        $data = Enquiry::orderBy('id', 'desc')->get();
        return view('admin/enquiries', compact('data'));
    }

    public function getNewsletterSubscriptions() {
        $data = Newsletter::orderBy('id', 'desc')->get();
        return view('admin/newsletter', compact('data'));
    }

    public function getProfile(Request $request){
        $user_key = Auth::guard("admin")->user()->id;
        $admin = admin::where('id',$user_key)->first();
        return view('admin/profile', compact('admin'));
    }

    public function getChangePassword(Request $request){
        $user_key = Auth::guard("admin")->user()->id;
        $admin = admin::where('id',$user_key)->first();
        return view('admin/change-password', compact('admin'));
    }

    public function changePassword(Request $request){
		$user = Auth::guard('admin')->user();
		$old = $request->curpass;
		$newp = $request->newpass;

		if($newp == "" || $old == ""){
			$response = array(
            	'status' => 'error',
            	'message' => 'Empty password field entered',
        	);
        	return Response::json($response);
		}
		elseif(Hash::check($old, $user->password)){
			$user->password = bcrypt($newp);
			$user->save();
			$response = array(
            	'status' => 'success',
            	'message' => 'Password changed successfully',
        	);
			return Response::json($response);
		}
		else{
			$response = array(
            	'status' => 'error',
            	'message' => 'Invalid password entered',
        	);
        	return Response::json($response);
		}
	}

    public function createParishMessages(Request $request){
        $item = new ParishMessage();
        $item->message_by = $request->message_by;
        $item->message = $request->message;
        $item->created_by = Auth::guard("admin")->user()->id;
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "created successfully",
            );

            $this->log("Added new parish message");
            return Response::json($response); //return status response as json
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error creating. Please try again",
            );
            return Response::json($response); //return status response as json
        }
    }

    public function updateParishMessages(Request $request){
        $item = ParishMessage::where('id',$request->id)->first();
        $item->message_by = $request->message_by;
        $item->message = $request->message;
        if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "updated successfully",
            );

            $this->log("updated parish message with");
            return Response::json($response); //return status response as json
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating. Please try again",
            );
            return Response::json($response); //return status response as json
        }
    }

    public function getOrders() {
        $data = Order::orderBy('id', 'desc')->get();
        return view('admin/orders', compact('data'));
    }

    public function getOrderView(Request $request){
        $id = $request->id;
        $order = Order::where('id',$id)->first();
        $ref = Payment::where('order_id',$id)->first();
        return view('admin/modals/order-view', compact('order','ref'));

    }

    public function resetPassword(Request $request){
        $item = Admin::where('id',$request->id)->first();
        $item->password = bcrypt($request->password);
        if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "Operation Successful",
            );

            $this->log("Change password for admin user with Email - $item->email");
            return Response::json($response); //return status response as json
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error encountered. Please try again",
            );
            return Response::json($response); //return status response as json
        }
    }

    public function getPaymentGateway() {
        $data = PaymentGateway::orderBy('id', 'desc')->get();
        return view('admin/payment-gateway', compact('data'));
    }

    public function createPaymentGateway(Request $request){
        $image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/payments";
            $image->move($path, $imageName);
        }
		$item = new PaymentGateway();
        $item->name = $request->name;
        $item->public_key = $request->public_key;
        $item->secret_key = $request->secret_key;
        $item->slug = Str::slug($request->name);
        $item->status = ACTIVE;
        if(!is_null($image) && $image != ''){
            $item->logo = $imageName;
        }
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "Operation Successful",
            );

            $this->log("Added new payment gateway with name - ".$request->name);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error submitting. Please try again",
            );
            return Response::json($response);
        }
    }

    public function updatePaymentGateway(Request $request){
        $image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/payments";
            $image->move($path, $imageName);
        }
		$item = PaymentGateway::where('id', $request->id)->first();
        $item->name = $request->name;
        $item->public_key = $request->public_key;
        $item->secret_key = $request->secret_key;
        // $item->slug = Str::slug($request->name);
        if(!is_null($image) && $image != ''){
            $item->logo = $imageName;
        }
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "Operation Successful",
            );

            $this->log("updated payment gateway with name - ".$request->name);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating. Please try again",
            );
            return Response::json($response);
        }
    }

    public function getServices(){
       $data = Service::orderBy('id','desc')->get();
       return view('admin/services', compact('data'));
    }

    public function createService(Request $request){
        $image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/services";
            $image->move($path, $imageName);
        }
		$item = new Service();
        $item->title = $request->title;
        $item->description = $request->description;
        $item->created_by = Auth::guard("admin")->user()->id;
        $item->slug = Str::slug($request->title);
        if(!is_null($image) && $image != ''){
            $item->image = $imageName;
        }
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "Operation Successful",
            );

            $this->log("Added new service with title - ".$request->title);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error submitting. Please try again",
            );
            return Response::json($response);
        }
    }

    public function updateService(Request $request){
        $image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/services";
            $image->move($path, $imageName);
        }
		$item = Service::where('id',$request->id)->first();
        $item->title = $request->title;
        $item->description = $request->description;
        if(!is_null($image) && $image != ''){
            $item->image = $imageName;
        }
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "Operation Successful",
            );

            $this->log("updated service with title - ".$request->title);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating. Please try again",
            );
            return Response::json($response);
        }
    }

    public function getProjects(){
        $data = Project::orderBy('id','desc')->get();
        $category = ProjectCategory::where('status', 1)->get();
        return view('admin/projects', compact('data','category'));
     }
 
     public function createProject(Request $request){
         $image = $request->file('image');
         if(!is_null($image) && $image != ''){
             $imageName  = time() . '.' . $image->getClientOriginalExtension();
             $path = "images/projects";
             $image->move($path, $imageName);
         }
         $item = new Project();
         $item->title = $request->title;
         $item->cat_id = $request->cat_id;
         $item->description = $request->description;
         $item->client = $request->client;
         $item->location = $request->location;
         $item->project_date = $request->project_date;
         $item->created_by = Auth::guard("admin")->user()->id;
         $item->slug = Str::slug($request->title);
         if(!is_null($image) && $image != ''){
             $item->image = $imageName;
         }
         if($item->save()){
             $response = array(
                 "status" => "success",
                 "message" => "Operation Successful",
             );
 
             $this->log("Added new project with title - ".$request->title);
             return Response::json($response);
         } else {
             $response = array(
                 "status" => "unsuccessful",
                 "message" => "Error submitting. Please try again",
             );
             return Response::json($response);
         }
     }

     public function updateProject(Request $request){
        $image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/projects";
            $image->move($path, $imageName);
        }
        $item = Project::where('id',$request->id)->first();
        $item->title = $request->title;
        $item->cat_id = $request->cat_id;
        $item->description = $request->description;
        $item->client = $request->client;
        $item->location = $request->location;
        $item->project_date = $request->project_date;
        if(!is_null($image) && $image != ''){
            $item->image = $imageName;
        }
        if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "Operation Successful",
            );

            $this->log("updated project with title - ".$request->title);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating. Please try again",
            );
            return Response::json($response);
        }
    }

    public function getProjectCategories() {
        $data = ProjectCategory::orderBy('id', 'desc')->get();
        return view('admin/project-category', compact('data'));
    }

    public function createProjectCategory(Request $request){
		$item = new ProjectCategory();
        $item->name = $request->name;
        $item->slug = Str::slug($request->name).'-'.time();
        $item->created_by = Auth::guard("admin")->user()->id;
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "created successfully",
            );

            $this->log("Added new project category with Title - ".$request->name);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error creating category. Please try again",
            );
            return Response::json($response);
        }
    }

    public function updateProjectCategory(Request $request){
		$item = ProjectCategory::where('id',$request->id)->first();
        $item->name = $request->name;
        // $item->slug = Str::slug($request->name);
        if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "updated successfully",
            );

            $this->log("updated project category with Title - ".$request->name);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating category. Please try again",
            );
            return Response::json($response);
        }
    }

    public function getTeams() {
        $data = Team::orderBy('id', 'desc')->get();
        return view('admin/teams', compact('data'));
    }

    public function createTeam(Request $request){
        $image = $request->file('image');
         if(!is_null($image) && $image != ''){
             $imageName  = time() . '.' . $image->getClientOriginalExtension();
             $path = "images/teams";
             $image->move($path, $imageName);
         }

		$item = new Team();
        $item->name = $request->name;
        $item->position = $request->position;
        $item->description = $request->description;
        $item->facebook = $request->facebook;
        $item->twitter = $request->twitter;
        $item->instagram = $request->instagram;
        $item->linkedin = $request->linkedin;
        $item->slug = Str::slug($request->name).'-'.time();
        $item->created_by = Auth::guard("admin")->user()->id;
        if(!is_null($image) && $image != ''){
            $item->image = $imageName;
        }
		if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "created successfully",
            );

            $this->log("Added new team member with Name - ".$request->name);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error creating. Please try again",
            );
            return Response::json($response);
        }
    }

    public function updateTeam(Request $request){
        $image = $request->file('image');
         if(!is_null($image) && $image != ''){
             $imageName  = time() . '.' . $image->getClientOriginalExtension();
             $path = "images/teams";
             $image->move($path, $imageName);
         }

		$item = Team::where('id',$request->id)->first();
        $item->name = $request->name;
        $item->position = $request->position;
        $item->description = $request->description;
        $item->facebook = $request->facebook;
        $item->twitter = $request->twitter;
        $item->instagram = $request->instagram;
        $item->linkedin = $request->linkedin;
        if(!is_null($image) && $image != ''){
            $item->image = $imageName;
        }
        if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "updated successfully",
            );

            $this->log("updated team member with Name - ".$request->name);
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating. Please try again",
            );
            return Response::json($response);
        }
    }

    public function getGalleries() {
        $data = Gallery::orderBy('id', 'desc')->get();
        $projects = Project::orderBy('id', 'desc')->get();
        return view('admin/gallery', compact('data','projects'));
    }

    public function addGalleryImage(Request $request){
        $validator = Validator::make($request->all(), [
            'images.*' => 'required|mimes:jpg,jpeg,png,bmp|max:5000'
            ],[
                'images.*.required' => 'Please upload an image',
                'images.*.mimes' => 'Only jpeg,png and bmp images are allowed',
                'images.*.max' => 'Sorry! Maximum allowed size for an image is 5MB',
            ]
        );
        if ($validator->fails()){
            $response = array(
                "status" => "unsuccessful",
                "message" => $validator->messages()->first(),
                );
                return Response::json($response);
        }

		if($request->hasfile('images')) {
            foreach($request->file('images') as $image) {
                $name= time() . '.' . str::random(6) . '.' .$image->getClientOriginalExtension();
                $path = "images/gallery";
                $image->move($path, $name);

                $gallery = new Gallery();
                $gallery->project_id = $request->project_id;
                $gallery->image = $name;
                $gallery->created_by = Auth::guard("admin")->user()->id;
                $gallery->save();
            }

            $response = array(
                "status" => "success",
                "message" => "operation successful",
            );

            $this->log("uploaded new images to gallery");
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "No image selected",
            );
            return Response::json($response);
        }
    }

    public function updateGalleryImage(Request $request){
        $validator = Validator::make($request->all(), [
            'image' => 'required|mimes:jpg,jpeg,png,bmp|max:5000'
            ],[
                'image.required' => 'Please upload an image',
                'image.mimes' => 'Only jpeg,png and bmp images are allowed',
                'image.max' => 'Sorry! Maximum allowed size for an image is 5MB',
            ]
        );
        if ($validator->fails()){
            $response = array(
                "status" => "unsuccessful",
                "message" => $validator->messages()->first(),
                );
                return Response::json($response);
        }

        $image = $request->file('image');
        $imageName  = time() . '.' . $image->getClientOriginalExtension();
        $path = "images/gallery";
        $image->move($path, $imageName);
        
        $item = Gallery::where('id',$request->id)->first();
        $item->project_id = $request->project_id;
        $item->image = $imageName;
        if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "Operation Successful",
            );
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating. Please try again",
            );
            return Response::json($response);
        }
    }
}
