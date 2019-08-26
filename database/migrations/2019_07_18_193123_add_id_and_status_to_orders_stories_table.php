<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddIdAndStatusToOrdersStoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('orders_stories', function (Blueprint $table) {
            //
            $table->increments('id');
            $table->string('status')->nullable();
            $table->string('code', 20)->unique();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('orders_stories', function (Blueprint $table) {
            //
        });
    }
}