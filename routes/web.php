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
Auth::routes();
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



Route::get('/visitors/rtis','VisitorController@rtipage')->name('visitor.rti');
Route::get('/visitors/orgview','VisitorController@orgview')->name('visitor.orgview');

Route::resource('visitors','VisitorController');

