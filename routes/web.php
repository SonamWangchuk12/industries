<?php
use Illuminate\Support\Facades\Auth;
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
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/', function () {

return redirect()->action('VisitorController@index');
});
Route::group(['middleware' => 'App\Http\Middleware\PreventBackHistory'],function(){
    Auth::routes();
   return view('auth.login');
  });

Route::group(['middleware' => 'App\Http\Middleware\CustomAuth'],function()
{

    Route::resource('sliders','SliderController');
    Route::resource('cmdatas','CMDataController');
    Route::resource('ministers','MinisterController');
    Route::resource('abouts','AboutController');
    Route::resource('rtis','RTIController');
    Route::resource('circulars','CircularController');
    Route::resource('notifications','NotificationController');
    Route::resource('tenders','TenderController');
    Route::resource('galleries','GalleryController');
    Route::resource('orgstructures','OrgStructureController');
    Route::resource('schemes','SchemeController');
    Route::resource('plans','PlanController');
    Route::resource('acts','ActController');
    Route::resource('onservices','OnlineServiceController');
    Route::resource('offservices','OfflineServiceController');
    
});


Route::get('/visitors/rtis','VisitorController@rtipage')->name('visitor.rti');
Route::get('/visitors/orgview','VisitorController@orgview')->name('visitor.orgview');
Route::get('/visitors/gallery','VisitorController@gallery')->name('visitor.gallery');
Route::get('/visitors/tender','VisitorController@tender')->name('visitor.tenders');
Route::get('/visitors/notification','VisitorController@notification')->name('visitor.notifications');
Route::get('/visitors/circular','VisitorController@circular')->name('visitor.circulars');
Route::get('/visitors/annualreport','VisitorController@annualreport')->name('visitor.annualreports');

Route::get('/visitors/schemes','VisitorController@scheme')->name('visitor.schemes');
Route::get('/visitors/schemedetails/{id}','VisitorController@schemedetail')->name('visitor.schemedetails');

Route::get('/visitors/plans','VisitorController@plan')->name('visitor.plans');
Route::get('/visitors/plandetails/{id}','VisitorController@plandetail')->name('visitor.plandetails');

Route::get('/visitors/acts','VisitorController@act')->name('visitor.acts');
Route::get('/visitors/actdetails/{id}','VisitorController@actdetail')->name('visitor.actdetails');

Route::get('/visitors/offlineservices','VisitorController@offservice')->name('visitor.offlineservices');
Route::get('/visitors/offlineservicedetails/{id}','VisitorController@offservicedetails')->name('visitor.offlineservicesdetails');

Route::get('/visitors/onlineservices','VisitorController@onservice')->name('visitor.onlineservices');
Route::get('/visitors/onlineservicedetails/{id}','VisitorController@onservicedetails')->name('visitor.onlineservicesdetails');

Route::resource('visitors','VisitorController');

