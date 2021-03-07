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
use App\Models\User;
use App\Models\Order;
use App\Models\Cart;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('user');
    }

    public function getAccount() {
        $user = User::where('id',Auth::guard('user')->user()->id)->first();
        return view('user/account', compact('user'));
    }

    public function getCart() {
        $data = Cart::where('user_id',Auth::guard('user')->user()->id)->get();
        return view('cart', compact('data'));
    }

    public function getOrders() {
        $data = Order::where('user_id',Auth::guard('user')->user()->id)->paginate(10);
        return view('user/orders', compact('data'));
    }

    public function getChangePassword() {
        $user = User::where('id',Auth::guard('user')->user()->id)->first();
        return view('user/change-password', compact('user'));
    }

    public function getAccountUpdate() {
        $user = User::where('id',Auth::guard('user')->user()->id)->first();
        return view('user/account-update', compact('user'));
    }

    public function accountUpdate(Request $request){
        $image = $request->file('image');
        if(!is_null($image) && $image != ''){
            $imageName  = time() . '.' . $image->getClientOriginalExtension();
            $path = "images/users/";
            $image->move($path, $imageName);
        }
    
        $item = User::where('id', Auth::guard('user')->user()->id)->first();
        $item->fname = $request->fname;
        $item->lname = $request->lname;
        $item->email = $request->email;
        $item->tel = $request->tel;
        $item->address = $request->address;
        if(!is_null($image) && $image != ''){
        $item->avatar = $imageName;
        }
        if($item->save()){
            $response = array(
                "status" => "success",
                "message" => "Account information updated",
            );
            return Response::json($response);
        } else {
            $response = array(
                "status" => "unsuccessful",
                "message" => "Error updating account . Please try again",
            );
            return Response::json($response);
        }
    }

    public function changePassword(Request $request){
        $validator = Validator::make($request->all(), [
            'curpass' => 'required|string','min:5', 'max:20',
            'newpass' => 'required|string','min:5','max:20',
            'newpass2' => 'required|string','min:5','max:20',
        ]);
        if ($validator->fails()){
            $response = array(
                "status" => "unsuccessful",
                "message" => $validator->messages()->first(),
            );
            return Response::json($response);
        }
        $old = $request->curpass;
        $newp = $request->newpass;
        $newp2 = $request->newpass2;
        $user = User::where('id',Auth::guard('user')->user()->id)->first();
    
        if($newp != $newp2){
            $response = array(
                'status' => 'error',
                'message' => 'New Password does not match',
            );
            return Response::json($response);
        } elseif(Hash::check($old, $user->password)){
            $user->password = bcrypt($newp);
            $user->save();
            $response = array(
                'status' => 'success',
                'message' => 'Password changed successfully',
            );
            return Response::json($response);
        } else {
            $response = array(
                'status' => 'error',
                'message' => 'Current Password is incorrect',
            );
            return Response::json($response);
        }
    }
}
