<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aboutme extends Model
{
    protected $fillable = [
        'name',
        'info',
        'status'
    ];
}
