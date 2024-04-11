<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Coursecategory extends Model
{
    use SoftDeletes;

    protected $table = 'coursecategory';
    public static function getAllCoursecategory()
    {
        return self::all();
    }
    
}

