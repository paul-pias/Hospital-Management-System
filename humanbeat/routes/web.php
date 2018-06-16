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
Route::get('/doctor', 'Admincontroller@doctor');
Route::get('/patient', 'Admincontroller@patient');
Route::get('/gallery', 'Admincontroller@gallery');
Route::get('/our_team', 'Admincontroller@our_team');
Route::get('/about', 'Admincontroller@about');
Route::get('/contact', 'Admincontroller@contact');
