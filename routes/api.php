<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => 'api'], function() {
    Route::match(['get', 'post'], '/contact', 'ApiController@contact')
        ->name('api.contact');

    Route::match(['get', 'post'], '/like', 'ApiController@like')
        ->name('api.like');

    Route::match(['get', 'post'], '/comment', 'ApiController@comment')
        ->name('api.comment');


});
