<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersStoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders_stories', function (Blueprint $table) {

            $table->unsignedInteger('order_id');
            $table->foreign('order_id')
                ->references('id')->on('orders')
                ->onDelete('cascade');

            $table->unsignedInteger('story_id');
            $table->foreign('story_id')
                ->references('id')->on('stories')
                ->onDelete('cascade');

            $table->string('name');
            $table->enum('gender', ['boy', 'girl']);

            $table->unsignedInteger('language_id');
            $table->foreign('language_id')
                ->references('id')->on('languages')
                ->onDelete('cascade');

            $table->enum('font_style', ['standard', 'uppercase']);
            $table->text('character_info');
            $table->text('dedication')->nullable();
            $table->string('dedication_picture')->nullable();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders_stories');
    }
}
