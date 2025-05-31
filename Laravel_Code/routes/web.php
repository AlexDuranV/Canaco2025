<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\ParticipationController;
use App\Http\Controllers\TriviaController;

Route::get('/', [ParticipationController::class, 'create']);
Route::post('/register', [ParticipationController::class, 'store'])->name('register');

Route::get('/trivia', [TriviaController::class, 'show'])->name('trivia.show');
Route::post('/trivia', [TriviaController::class, 'submit'])->name('trivia.submit');


Route::get('/', function () {
    return view('welcome');
});
