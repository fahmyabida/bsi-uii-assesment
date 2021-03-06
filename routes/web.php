<?php

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/home', 'UserController@index');

Route::get('/home/delete/{id}', 'UserController@delete');

Route::get('/home/useredit/{id}', 'UserController@edit');
Route::patch('/home/useredit/update/{id}', 
[
	'as' => 'home.useredit.update',
	'uses' => 'UserController@update'
]);