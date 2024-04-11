<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSalesorderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('salesorder', function (Blueprint $table) {
            $table->increments('id');
            $table->string('item')->nullable();
            $table->integer('qty')->default('1')->nullable();
            $table->float('price')->nullable();
            $table->string('item_id')->nullable();
            $table->string('user')->nullable();
            $table->string('total_price')->nullable();
            $table->string('payment_mode')->nullable();
            $table->string('transection_id')->nullable();
            $table->string('payment_status')->nullable();
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
        Schema::dropIfExists('salesorder');
    }
}
