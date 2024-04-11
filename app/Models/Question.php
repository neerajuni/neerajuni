<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $table = 'question';
    public function examination()
    {
        return $this->belongsTo(Exam::class, 'exam_id');
    }
}
