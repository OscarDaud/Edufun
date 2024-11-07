<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\WriterController;

Route::get('/', [CategoryController::class, 'show_category'])->name('home');
Route::get('/course/{id}', [CourseController::class, 'show_course'])->name('course.show');
Route::get('/category/{id}', [CategoryController::class, 'show_detail'])->name('category.show');
Route::get('/writers', [WriterController::class, 'show_writers'])->name('writer.show');
Route::get('/writer/{id}', [WriterController::class, 'show_writer'])->name('writer.detail');
Route::get('/popular', [CourseController::class, 'show_popular'])->name('popular');	
Route::get('/about-us', function () {
    return view('about-us');
})->name('about-us');