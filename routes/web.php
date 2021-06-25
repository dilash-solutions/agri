<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Home;
use App\Http\Controllers\Admin;

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

Route::get('/', function () { return view('welcome'); });

Route::get('/ab', function () { return view('dashboard'); });

Route::get('/dashboard',[Home::class, "GetEmployees"]);



require __DIR__.'/auth.php';


//Route::get('/', [Home::class, "FormEmployee"]);


//User Dashboard

Route::get('/attendance','App\Http\Controllers\Home@attendance');
Route::post('/att','App\Http\Controllers\Home@insertAttendance');

 
Route::get('employees', [Home::class, "GetEmployees"]);
Route::post('employees', [Home::class, "AddEmployee"]);
Route::get('male', [Home::class, "GetMaleEmployees"]);
Route::get('female', [Home::class, "GetFemaleEmployees"]);
Route::get('delete/{id}',[Home::class, "DeleteEmployees"]);
Route::get('edit/{id}',[Home::class, "EditEmployee"]);
Route::post('edit',[Home::class, "Update"]);







Route::get('/attendance', 'App\Http\Controllers\Home@attendance');
Route::get('/att/{id}', 'App\Http\Controllers\Home@insertAttendance');
Route::get('/attremove/{id}', 'App\Http\Controllers\Home@removeAttendance');


// //Admin Dasshboard
