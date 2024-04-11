<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Subcategory extends Model
{
    use SoftDeletes;

    protected $table = 'subcategory';
    public function categorylist()
    {
        return $this->belongsTo(Category::class, 'parent_id');
    }
}
