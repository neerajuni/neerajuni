<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateQuestionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('question', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('exam_id')->nullable();
            $table->text('question_text')->nullable();
            $table->text('option_a')->nullable();
            $table->text('option_b')->nullable();
            $table->text('option_c')->nullable();
            $table->text('option_d')->nullable();
            $table->text('answer_text')->nullable();
            $table->string('answer_option')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('question');
    }
}
