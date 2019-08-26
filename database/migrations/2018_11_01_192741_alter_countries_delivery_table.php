<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AlterCountriesDeliveryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('countries_delivery', function (Blueprint $table) {
            $table->integer('min_days')->unsigned();
            $table->integer('max_days')->unsigned();
            $table->float('price_usd')->unsigned();
            $table->float('price_eur')->unsigned();
            $table->integer('parent_id')->unsigned()->nullable();
            $table->integer('lft')->unsigned()->nullable();
            $table->integer('rgt')->unsigned()->nullable();
            $table->integer('depth')->unsigned()->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('countries_delivery', function (Blueprint $table) {
            $table->dropColumn('min_days');
            $table->dropColumn('max_days');
            $table->dropColumn('price_usd');
            $table->dropColumn('price_eur');
            $table->dropColumn('parent_id');
            $table->dropColumn('lft');
            $table->dropColumn('rgt');
            $table->dropColumn('depth');
        });
    }
}
