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


Route::get('/', 'PostController@Main')
	->name('main.index');

Route::get('category/{category}', 'PostController@listByCategory')
    ->name('main.list.category');

Route::get('tag/{tag}', 'PostController@listByTag')
    ->name('main.list.tag');

Route::get('search', 'PostController@listBySearch')
    ->name('main.list.search');

Route::get('myposts', 'PostController@myPosts')
    ->name('main.list.my');

Route::get('/about', 'AdditionalPagesController@about')
    ->name('main.about');

Route::match(['get', 'post'], '/contact', 'AdditionalPagesController@contact')
    ->name('main.contact');

Route::get('/sign-up', 'AuthController@signUp')
    ->name('Auth.signUp.Get');

Route::post('/sign-up', 'AuthController@signUpPost')
    ->name('Auth.signUp.Post');

Route::get('/log-in', 'AuthController@logIn')
    ->name('Auth.logIn.Get');

Route::post('/log-in', 'AuthController@logInPost')
    ->name('Auth.logIn.Post');

Route::group(['prefix' => '/post'], function() {

    Route::get('{id}', 'PostController@OneGet')
        ->where('id', '[0-9]+')
        ->name('post.one.get');

    Route::get('delete/{id}', 'PostController@Delete')
        ->where('id', '[0-9]+')
        ->name('post.delete');

    Route::get('add', 'PostController@AddGet')
        ->name('post.add.get');

    Route::post('add', 'PostController@AddPost')
        ->name('post.add.post');

    Route::get('edit/{id}', 'PostController@EditGet')
        ->where('id', '[0-9]+')
        ->name('post.edit.get');

    Route::post('edit/{id}', 'PostController@EditPost')
        ->where('id', '[0-9]+')
        ->name('post.edit.post');

});

Route::get('log-in/{provider}', 'GoogleController@redirectToProvider');

Route::get('log-in/{provider}/callback', 'GoogleController@handleProviderCallback');

Auth::routes(['verify' => true]);

Route::get('/home', 'HomeController@index')->name('home');
