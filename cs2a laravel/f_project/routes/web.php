<?php


use App\Http\Controllers\MiniiController;
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

Route::get('/', 'MiniiController@index');
Route::get('/post', 'Post@post');

Route::get('/about', 'MiniiController@second');
Route::get('/contact', function () {
    return view('contact');
});

