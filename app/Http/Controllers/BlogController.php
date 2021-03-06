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
use App\Models\Blog;
use App\Models\BlogCategory;

class BlogController extends Controller
{
    public function getBlog() {
        $data = Blog::where('status',1)->orderBy('id', 'DESC')->paginate(10);
        return view('front/blog', compact('data'));
    }

    public function getBlogCategory($id) {
        $category = BlogCategory::where('status', 1)->where('featured', 1)->get();
        $blogfeatured = Blog::where('status',1)->where('featured',1)->orderBy('id', 'DESC')->limit('5')->get();
    
        $data = Blog::select('blogs.*','blog_categories.name')
                ->leftJoin('blog_categories','blog_categories.id','=','blogs.cat_id')
                ->where('blog_categories.slug',$id)
                ->orderBy('blogs.id', 'DESC')
                ->paginate(10);
    
        $catname = BlogCategory::where('slug',$id)->first();
    
        return view('front/blog-category', compact('category','data','blogfeatured','catname'));
    }

    public function getBlogDetails($id) {
        $category = BlogCategory::where('status', 1)->where('featured', 1)->get();
        $blogfeatured = Blog::where('status',1)->where('featured',1)->orderBy('id', 'DESC')->limit('5')->get();

        $data = Blog::where('slug',$id)->first();
        return view('front/blog-detail', compact('category','data','blogfeatured'));
    }

    public function findBlogSearch(Request $request){
        // $this->validate($request, [
        // 'q'=>'required'
        // ]);
        $search = $request->input('q');
        $q = urlencode($search);
        return redirect('blog/search?q='.$q);
    }

    public function blogSearch(Request $request){
        $q = $request->get('q');
        $data = Blog::where ( 'title', 'LIKE', '%' . $q . '%' )->orWhere ( 'description', 'LIKE', '%' . $q . '%' )->paginate(10);
        $category = BlogCategory::where('status', 1)->where('featured', 1)->get();
        $blogfeatured = Blog::where('status',1)->where('featured',1)->orderBy('id', 'DESC')->limit('5')->get();
        $blogrecent = Blog::where('status',1)->orderBy('id', 'DESC')->limit('5')->get();
    
        return view('front/blog-search', compact('data','q','category','blogfeatured','blogrecent'));
    }
}
