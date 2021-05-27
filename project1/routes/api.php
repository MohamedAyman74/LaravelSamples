<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::post('Login', [AuthController::class, 'login']);
Route::post('Register', [AuthController::class, 'register']);

Route::group(['middleware' => 'auth:sanctum'], function() {
    
    Route::post('users', function () {
        return ['message' => 'this page is protected by middleware'];
    });

    Route::post('Logout', [AuthController::class, 'logout']);
});