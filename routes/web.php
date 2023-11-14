<?php

use App\Http\Controllers\GuruController;
use App\Http\Controllers\BeritaController;
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

Route::get('/login', function () {
    return view('/admin/login');
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

Route::get('/berita', function () {
    return view('berita');
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


Route::get('/admin/guru',[GuruController::class, 'index']);

Route::get('/admin/tambahguru', function () {
    return view('/admin/tambahguru');
});

Route::post('/admin/simpanguru', [GuruController::class, 'store']);

Route::get('/guru/{id}/hapusguru', [GuruController::class,'hapusguru']);

Route::get('/guru/{id}/editguru', [GuruController::class,'editguru']);
Route::post('/admin/{id}/updateguru', [GuruController::class, 'updateguru']);



Route::get('/admin/tambahberita', function () {
    return view('/admin/tambahberita');
});

Route::post('/admin/simpanberita', [BeritaController::class, 'store']);

Route::get('/admin/berita',[BeritaController::class, 'index']);

Route::get('/berita/{id}/hapusberita', [BeritaController::class,'hapusberita']);

Route::get('/berita/{id}/editberita', [BeritaController::class,'editberita']);
Route::post('/admin/{id}/updateberita', [BeritaController::class, 'updateberita']);