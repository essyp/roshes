<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    public function getEvents() {
        $data = Product::where('status',1)->orderBy('id', 'DESC')->get();
        return view('front/products', compact('data'));
    }

    public function getDetails($id) {
        $data = Product::where('slug',$id)->first();
        return view('front/products-details', compact('data'));
    }
}
