<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    public $timestamps=false;
    use HasFactory;


    protected $fillable=[
        'bar_kod',
        'polaziste',
        'odrediste',
        'tip',
        'klasa',
        'cijena',
        'datum',
        'vrijeme',
    ];

}
