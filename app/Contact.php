<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $fillable = [
        'location', 'linkin', 'github', 'skype', 'phone', 'email'
    ];
}
