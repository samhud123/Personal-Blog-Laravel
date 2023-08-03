<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SlideController;
use Illuminate\Support\Facades\Route;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

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

Route::get('/', [BlogController::class, 'index']);

Route::get('/artikel', [BlogController::class, 'article']);

Route::get('/tentang', [BlogController::class, 'about']);

Route::get('/artikel/{article:slug}', [BlogController::class, 'detail']);

Route::redirect('/home', '/dashboard');

Route::get('/login', [AuthController::class, 'index'])->name('login')->middleware('guest');

Route::post('/login', [AuthController::class, 'authenticate']);

Route::post('/logout', [AuthController::class, 'logout']);

Route::get('/dashboard', [AboutController::class, 'index'])->middleware('auth');

Route::put('/dashboard', [AboutController::class, 'update'])->middleware('auth');

Route::resource('/dashboard/slide', SlideController::class)->middleware('auth');

Route::resource('/dashboard/kategori', CategoryController::class)->middleware('auth');

Route::get('/slug-kategori', [CategoryController::class, 'getSlug'])->middleware('auth');

Route::resource('/dashboard/artikel', ArticleController::class)->middleware('auth');

Route::get('/slug-artikel', [ArticleController::class, 'getSlug'])->middleware('auth');