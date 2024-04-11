<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Studymaterials extends Model
{
    use SoftDeletes;

    protected $table = 'study_materials';
    public function courseCategory()
    {
        return $this->belongsTo(Coursecategory::class, 'course_category');
    }
    public function getAllCourse()
    {
        return $this->belongsTo(Course::class, 'course');
    }
}
