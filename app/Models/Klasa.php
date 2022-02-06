<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use DB;

class Klasa extends Model
{
    public $timestamps=false;
    use HasFactory;
    

    protected $fillable=[
        'naziv', ];}
