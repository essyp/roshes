<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('front/index');
// });

Route::group(['middleware' => ['web'], 'namespace' => 'App\Http\Controllers'], function () {
    Route::get('/', 'HomeController@getHome');
    Route::get('about', 'HomeController@getAbout');
    Route::get('services', 'HomeController@getServices');
    Route::get('service/{id}', 'HomeController@getServiceDetails');
    Route::get('contact', 'HomeController@getContact');
    Route::get('teams', 'HomeController@getTeams');
    Route::get('projects', 'HomeController@getProjects');
    Route::get('project/{id}', 'HomeController@getProjectDetail');

    Route::post('send-enquiry', 'HomeController@sendEnquiry');
});

Route::group(['middleware' => ['admin'], 'namespace' => 'App\Http\Controllers', 'prefix' => 'admin/'], function () {
    Route::get('', 'AdminController@index');
    Route::get('dashboard', 'AdminController@index');
    Route::get('admin-users', 'AdminController@allAdminUsers');
    Route::post('create-admin-user', 'AdminController@createAdmin');
    Route::post('update-admin-user', 'AdminController@updateAdmin');
    Route::post('update-admin-role', 'AdminController@updateAdminRole');
    Route::get('blog', 'AdminController@getBlog');
    Route::post('create-blog', 'AdminController@createBlog');
    Route::post('update-blog', 'AdminController@updateBlog');
    Route::get('blog-categories', 'AdminController@getBlogCategory');
    Route::post('create-blog-category', 'AdminController@createBlogCategory');
    Route::post('update-blog-category', 'AdminController@updateBlogCategory');
    Route::get('ministry-setup', 'AdminController@getMinistrySettings');
    Route::post('update-company', 'AdminController@updateCompany');
    Route::get('social-accounts', 'AdminController@getSocials');
    Route::post('update-socials', 'AdminController@updateSocials');
    Route::get('messaging-settings', 'AdminController@getSettings');
    Route::post('update-message-settings', 'AdminController@updateSettings');
    Route::get('ministries', 'AdminController@getMinistries');
    Route::post('create-ministry', 'AdminController@createMinistry');
    Route::post('update-ministry', 'AdminController@updateMinistry');
    Route::get('users', 'AdminController@getUsers');
    Route::get('products', 'AdminController@getProducts');
    Route::post('create-product', 'AdminController@createProduct');
    Route::post('update-product', 'AdminController@updateProduct');
    Route::get('product-categories', 'AdminController@getProductCategory');
    Route::post('create-product-category', 'AdminController@createProductCategory');
    Route::post('update-product-category', 'AdminController@updateProductCategory');
    Route::get('banners', 'AdminController@getBanners');
    Route::post('create-banner', 'AdminController@createBanner');
    Route::post('update-banner', 'AdminController@updateBanner');
    Route::get('programmes', 'AdminController@getProgrammes');
    Route::post('create-programme', 'AdminController@createProgramme');
    Route::post('update-programme', 'AdminController@updateProgramme');
    Route::get('banks', 'AdminController@getBanks');
    Route::post('create-bank', 'AdminController@createBank');
    Route::post('update-bank', 'AdminController@updateBank');
    Route::get('donations', 'AdminController@getDonations');
    Route::get('payments', 'AdminController@getPayments');
    Route::get('log', 'AdminController@getLog');
    Route::get('parish-messages', 'AdminController@getParishMessages');
    Route::post('create-parish-message', 'AdminController@createParishMessages');
    Route::post('update-parish-message', 'AdminController@updateParishMessages');
    Route::get('orders', 'AdminController@getOrders');
    Route::get('order/view/', 'AdminController@getOrderView');
    Route::get('enquiries', 'AdminController@getEnquiries');
    Route::get('newsletter-subscriptions', 'AdminController@getNewsletterSubscriptions');
    Route::get('account-update', 'AdminController@getProfile');
    Route::get('change-password', 'AdminController@getChangePassword');
    Route::post('update-password', 'AdminController@changePassword');
    Route::post('reset-admin-password', 'AdminController@resetPassword');
    Route::get('events', 'AdminController@getEvents');
    Route::post('create-event', 'AdminController@createEvent');
    Route::post('update-event', 'AdminController@updateEvent');
    Route::get('payment-gateways', 'AdminController@getPaymentGateway');
    Route::post('create-payment-gateway', 'AdminController@createPaymentGateway');
    Route::post('update-payment-gateway', 'AdminController@updatePaymentGateway');
    Route::get('services', 'AdminController@getServices');
    Route::post('create-service', 'AdminController@createService');
    Route::post('update-service', 'AdminController@updateService');
    Route::get('projects', 'AdminController@getProjects');
    Route::post('create-project', 'AdminController@createProject');
    Route::post('update-project', 'AdminController@updateProject');
    Route::get('project-categories', 'AdminController@getProjectCategories');
    Route::post('create-project-category', 'AdminController@createProjectCategory');
    Route::post('update-project-category', 'AdminController@updateProjectCategory');
    Route::get('teams', 'AdminController@getTeams');
    Route::post('create-team', 'AdminController@createTeam');
    Route::post('update-team', 'AdminController@updateTeam');
    Route::get('gallery', 'AdminController@getGalleries');
    Route::post('add-images', 'AdminController@addGalleryImage');
    Route::post('update-image', 'AdminController@updateGalleryImage');
});

Route::group(['middleware' => ['admin'], 'namespace' => 'App\Http\Controllers', 'prefix' => 'admin/'], function () {
    Route::post('ministry-status', 'StatusController@ministry');
    Route::post('programme-status', 'StatusController@programme');
    Route::post('broadcast-status', 'StatusController@broadcast');
    Route::post('product-status', 'StatusController@product');
    Route::post('product-category-status', 'StatusController@ProductCategory');
    Route::post('blog-status', 'StatusController@blog');
    Route::post('blog-category-status', 'StatusController@BlogCategory');
    Route::post('user-status', 'StatusController@user');
    Route::post('admin-status', 'StatusController@admin');
    Route::post('bank-status', 'StatusController@bank');
    Route::post('banner-status', 'StatusController@banner');
    Route::post('log-status', 'StatusController@logStatus');
    Route::post('enquiry-status', 'StatusController@enquiry');
    Route::post('event-status', 'StatusController@event');
    Route::post('payment-gateway-status', 'StatusController@paymentGateway');
    Route::post('service-status', 'StatusController@service');
    Route::post('project-status', 'StatusController@project');
    Route::post('project-category-status', 'StatusController@projectCategory');
    Route::post('team-status', 'StatusController@team');
    Route::post('gallery-status', 'StatusController@gallery');
});


Route::group(['middleware' => ['web'], 'namespace' => 'App\Http\Controllers', 'prefix' => 'blog/'], function () {
    Route::get('', 'BlogController@getBlog');
    Route::get('category/{id}', 'BlogController@getBlogCategory');
    Route::get('{id}', 'BlogController@getBlogDetails');
    Route::post('search-blog', 'HomeController@findBlogSearch');
    Route::get('search', 'HomeController@blogSearch');
});

Route::group(['middleware' => ['web'], 'namespace' => 'App\Http\Controllers', 'prefix' => 'ministry/'], function () {
    Route::get('', 'MinistryController@getMinistry');
    Route::get('{id}', 'MinistryController@getDetails');
});

Route::group(['middleware' => ['web'], 'namespace' => 'App\Http\Controllers', 'prefix' => 'programme/'], function () {
    Route::get('', 'ProgrammeController@getProgrammes');
    Route::get('{id}', 'ProgrammeController@getDetails');
});

Route::group(['middleware' => ['web'], 'namespace' => 'App\Http\Controllers', 'prefix' => 'event/'], function () {
    Route::get('', 'EventController@getEvents');
    Route::get('{id}', 'EventController@getDetails');
});

Route::group(['middleware' => ['web'], 'namespace' => 'App\Http\Controllers', 'prefix' => 'product/'], function () {
    Route::get('', 'ProductController@getProducts');
    Route::get('{id}', 'ProductController@getDetails');
});

Route::group(['middleware' => ['user'], 'namespace' => 'App\Http\Controllers', 'prefix' => 'user/'], function () {
    Route::get('account', 'UserController@getAccount');
    Route::get('carts', 'UserController@getCart');
    Route::get('change-password', 'UserController@getChangePassword');
    Route::get('account-update', 'UserController@getAccountUpdate');
    Route::post('account-update', 'UserController@accountUpdate');
    Route::post('change-password', 'UserController@changePassword');
});

Route::group(['middleware' => ['web'], 'namespace' => 'App\Http\Controllers', 'prefix' => 'admin/'], function () {
    Route::post('login', 'AuthController@authenticate');
    Route::view('login','admin/login');
    Route::get('logout', 'AuthController@logout');
});

