<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStoryValuesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('story_values', function (Blueprint $table) {
            $table->unsignedInteger('story_id');
            $table->unsignedInteger('value_id');

            $table->foreign('story_id')
                ->references('id')->on('stories')
                ->onDelete('cascade');

            $table->foreign('value_id')
                ->references('id')->on('values')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('story_values');
    }
}
