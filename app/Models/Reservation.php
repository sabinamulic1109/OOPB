<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reservation extends Model
{
    public $timestamps=false;
    use HasFactory;


    protected $fillable=[
        'šifra',
        'karta',
        'putnik',
        'mjesto',
        'plaćanje',
        'datum',
        'vrijeme',
    ];}
