<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TicketController;
use App\Http\Controllers\DepartureController;
use App\Http\Controllers\DestinationController;
use App\Http\Controllers\TypeController;
use App\Http\Controllers\KlasaController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\PassangerController;
use App\Http\Controllers\ReservationController;
use App\Http\Controllers\LocationController;
use App\Http\Controllers\UpitController;








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


Route::middleware(['auth:sanctum', 'verified'])->get('/', function () {
    return view('dashboard');
})->name('dashboard');

/*
Route::middleware(['auth:sanctum', 'verified'])->get('/tickets', function () {
    return view('tickets.index');
})->name('tickets');*/

Route::middleware(['auth:sanctum', 'verified'])->get('tickets', [TicketController::class,'index'])->name('tickets');
Route::middleware(['auth:sanctum', 'verified'])->get('add_ticket', [TicketController::class,'create'])->name('add_ticket');
Route::middleware(['auth:sanctum', 'verified'])->post('store_ticket', [TicketController::class,'store'])->name('store_ticket');
Route::middleware(['auth:sanctum', 'verified'])->post('delete_ticket', [TicketController::class,'delete'])->name('delete_ticket');
Route::middleware(['auth:sanctum', 'verified'])->post('edit_ticket', [TicketController::class,'edit'])->name('edit_ticket');
Route::middleware(['auth:sanctum', 'verified'])->post('update_ticket', [TicketController::class,'update'])->name('update_ticket');




Route::middleware(['auth:sanctum', 'verified'])->get('departures', [DepartureController::class,'index'])->name('departures');
Route::middleware(['auth:sanctum', 'verified'])->get('destinations', [DestinationController::class,'index'])->name('destinations');
Route::middleware(['auth:sanctum', 'verified'])->get('types', [TypeController::class,'index'])->name('types');
Route::middleware(['auth:sanctum', 'verified'])->get('klasas', [KlasaController::class,'index'])->name('klasas');
Route::middleware(['auth:sanctum', 'verified'])->get('payments', [PaymentController::class,'index'])->name('payments');
Route::middleware(['auth:sanctum', 'verified'])->get('passangers', [PassangerController::class,'index'])->name('passangers');
Route::middleware(['auth:sanctum', 'verified'])->get('reservations', [ReservationController::class,'index'])->name('reservations');
Route::middleware(['auth:sanctum', 'verified'])->get('locations', [LocationController::class,'index'])->name('locations');
Route::middleware(['auth:sanctum', 'verified'])->get('upits', [UpitController::class,'index'])->name('upits');


