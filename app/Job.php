<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    protected $fillable = [
        'dateRange',
        'companyName',
        'companyLink',
        'typeJob',
        'position',
        'library',
        'langs',
        'stack',
        'additions'
    ];
}
