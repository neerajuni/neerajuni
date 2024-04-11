<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudyMaterialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('study_materials', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('course_category')->comment('Subject category')->nullable();
            $table->integer('subject')->comment('Coursename')->nullable();
            $table->string('title')->comment('Name of the material')->nullable();
            $table->float('fees')->comment('fees')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('study_materials');
    }
}
