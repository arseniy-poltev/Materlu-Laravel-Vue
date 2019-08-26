<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDeliveryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('delivery', function (Blueprint $table) {
            $table->increments('id');
            $table->float('price');
            $table->string('first_name');
            $table->string('last_name');
            $table->string('street_address');
            $table->string('apt_suite_number')->nullable();
            $table->string('company_name')->nullable();
            $table->string('zip_code');
            $table->string('city');

            $table->unsignedInteger('country_id');
            $table->foreign('country_id')
                ->references('id')->on('countries_delivery')
                ->onDelete('cascade');

            $table->string('state');
            $table->string('phone');
            $table->text('instructions')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('delivery');
    }
}
