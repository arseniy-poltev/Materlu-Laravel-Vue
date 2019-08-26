<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code')->unique();
            // $table->enum('status', ['ordered', 'paid', 'printing', 'sending', 'delivering', 'delivered', 'checking', 'pending', 'printed','finished']);
            $table->string('status');
            $table->float('total_price');

            $table->unsignedInteger('delivery_id');
            $table->foreign('delivery_id')
                ->references('id')->on('delivery')
                ->onDelete('cascade');

            $table->unsignedInteger('coupon_id')->nullable();
            $table->foreign('coupon_id')
                ->references('id')->on('coupons')
                ->onDelete('cascade');

            $table->unsignedInteger('currency_id');
            $table->foreign('currency_id')
                ->references('id')->on('currencies')
                ->onDelete('cascade');

            $table->string('email');
            $table->string('first_name');
            $table->string('last_name');
            $table->enum('payment_method', ['card', 'paypal']);

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
        Schema::dropIfExists('orders');
    }
}