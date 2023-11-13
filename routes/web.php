<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('index');
});

Route::get('/about', function () {
    return view('about');
});

Route::get('/rpl', function () {
    return view('rpl');
});

Route::get('/tkj', function () {
    return view('tkj');
});

Route::get('/guru-tendik', function () {
    return view('guru-tendik');
});

Route::get('/sarpras', function () {
    return view('sarpras');
});

Route::get('/ekstrakulikuler', function () {
    return view('ekstrakulikuler');
});

Route::get('/admin', function () {
    return view('/admin/index');
});

Route::get('/admin/dashboard', function () {
    return view('/admin/dashboard');
});

Route::get('/admin/galeri', function () {
    return view('/admin/galeri');
});

Route::get('/admin/berita', function () {
    return view('/admin/berita');
});


Route::get('/admin/guru', function () {
    return view('/admin/guru');
});

Route::get('/admin/tambahguru', function () {
    return view('/admin/tambahguru');
});

