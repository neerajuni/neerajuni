<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Exam extends Model
{
    use SoftDeletes;

    protected $table = 'examination';
    public function questions()
    {
        return $this->hasMany(Question::class);
    }
}
