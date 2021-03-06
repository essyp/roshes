<?php

namespace App\Providers;
define('ACTIVE','1');
define('INACTIVE','2');
define('COMPLETED','3');
define('CANCELED','4');
define('PROCESSING','5');
define('PROCESSED','6');
define('YES','1');
define('NO','2');
define('ADMIN','1');
define('SUPER_ADMIN','2');
define('MANAGER','3');
define('SUCCESSFUL','1');
define('UNSUCCESSFUL','2');
define('USER','2');
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Auth;
use App\Models\Company;
use App\Models\Cart;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        
        $comm = Company::where('id', 1)->first();
        view()->share('comm',$comm);

        View::composer('*', function($view) {
            if(Auth::guard('user')->user()){
                $totalcart = Cart::where('user_id',Auth::guard('user')->user()->id)->count();
                view()->share('totalcart',$totalcart);
            }else{
                $totalcart = '0';
                view()->share('totalcart',$totalcart);
            }
        });

    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
