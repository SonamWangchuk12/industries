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
    Route::resource('sections','SectionController');
    
    Route::resource('events','EventController');
    Route::resource('dics','DICController');
    Route::resource('newcomplains', 'ReceivedComplainController');
    
    Route::resource('govdatas', 'GovDataController');

});


Route::get('/visitors/rtis','VisitorController@rtipage')->name('visitor.rti');

Route::get('/visitors/events','VisitorController@events')->name('visitor.event');
Route::get('/visitors/dics','VisitorController@dics')->name('visitor.dics');
Route::get('/visitors/orgview','VisitorController@orgview')->name('visitor.orgview');
Route::get('/visitors/gallery','VisitorController@gallery')->name('visitor.gallery');
Route::get('/visitors/tender','VisitorController@tender')->name('visitor.tenders');
Route::get('/visitors/notification','VisitorController@notification')->name('visitor.notifications');
Route::get('/visitors/circular','VisitorController@circular')->name('visitor.circulars');

Route::get('/visitors/schemes','VisitorController@scheme')->name('visitor.schemes');
Route::get('/visitors/schemedetails/{id}','VisitorController@schemedetail')->name('visitor.schemedetails');


Route::get('/visitors/sections','VisitorController@section')->name('visitor.sections');
Route::get('/visitors/sections/{id}','VisitorController@sectiondetail')->name('visitor.sectiondetails');


Route::post('/newcomplains/store', 'ReceivedComplainController@store');


Route::resource('visitors','VisitorController');

