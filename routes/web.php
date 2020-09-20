<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------a
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'MainController@main')->name('main');
Route::post('/contact', 'MailController@sendMail');

Route::group(['middleware' => 'auth'], function(){

    Route::group(['prefix' =>  'admin_123' ], function () {

        Route::get('/', 'AdminController@index')->name('admin');

        Route::group(['prefix' => 'jobs'], function () {
            Route::get('/', 'JobController@index')->name('jobs');
            Route::get('/create', 'JobController@create')->name('create_job');
            Route::get('/edit/{id}', 'JobController@edit')->name('edit_job');
            Route::post('/update/{id}', 'JobController@update')->name('update_job');
            Route::post('/destroy/{id}', 'JobController@destroy')->name('destroy_job');
            Route::post('/store', 'JobController@store')->name('store_job');
        });

        Route::group(['prefix' => 'avatars'], function () {
            Route::get('/', 'AvatarController@index')->name('avatars');
            Route::post('/store', 'AvatarController@store')->name('store_avatar');
            Route::get('/update/{avatar}', 'AvatarController@update')->name('update_avatar');
            Route::post('/destroy/{avatar}', 'AvatarController@destroy')->name('destroy_avatar');
            Route::get('/avacheck', 'AvatarController@avacheck')->name('avacheck');
        });

        Route::group(['prefix' => 'images'], function () {
            Route::get('/', 'ImageController@index')->name('images');
            Route::post('/store', 'ImageController@store')->name('store_image');
            Route::get('/update/{image}', 'ImageController@update')->name('update_image');
        });

        Route::group(['prefix' => 'letters'], function () {
            Route::get('/', 'LetterController@index')->name('letters');
            Route::post('/store', 'LetterController@store')->name('store_letter');
            Route::get('/update/{letter}', 'LetterController@update')->name('update_letter');
            Route::post('/destroy/{id}', 'LetterController@destroy')->name('destroy_letter');
        });

        Route::group(['prefix' => 'about'], function () {
            Route::get('/', 'AboutController@index')->name('about');
            Route::get('/edit/{id}', 'AboutController@edit')->name('edit_about');
            Route::post('/update/{id}', 'AboutController@update')->name('update_about');
            Route::post('/update_status', 'AboutController@updatestatus')->name('update_about_status');
        });

        Route::group(['prefix' => 'projects'], function () {
            Route::get('/', 'ProjectController@index')->name('projects');
            Route::get('/create', 'ProjectController@create')->name('create_project');
            Route::post('/store', 'ProjectController@store')->name('store_project');
            Route::get('/show/{id}', 'ProjectController@show')->name('show_project');
            Route::get('/edit/{id}', 'ProjectController@edit')->name('edit_project');
            Route::post('/update/{id}', 'ProjectController@update')->name('update_project');
            Route::post('/update_status', 'ProjectController@updatestatus')->name('update_project_status');
            Route::post('/destroy_project/{id}', 'ProjectController@destroy')->name('destroy_project');
        });

        Route::group(['prefix' => 'visitors'], function () {
            Route::get('/', 'VisitorController@index')->name('visitors');
        });
        Route::group(['prefix' => 'contacts'], function () {
            Route::get('/', 'ContactController@index')->name('contacts');
            Route::get('/edit', 'ContactController@edit')->name('edit_contact');
            Route::post('/update/{id}', 'ContactController@update')->name('update_contact');
        });
    });
});

Route::get('login_123', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('login_123', 'Auth\LoginController@login');
Route::post('logout', 'Auth\LoginController@logout')->name('logout');

Route::match(['get', 'post'], '/login', function () {  return view('layouts.error');  });
Route::match(['get', 'post'], '/register', function () {    return view('layouts.error');});
Route::match(['get', 'post'], '/password/reset', function () {     return view('layouts.error'); });

//Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


