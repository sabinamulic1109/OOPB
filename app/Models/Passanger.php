<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Passanger extends Model
{
    public $timestamps=false;
    use HasFactory;
    

    protected $fillable=[
        'ime',
        'prezime',
        'mob',
        'email',
        'adresa',

    ];

}
