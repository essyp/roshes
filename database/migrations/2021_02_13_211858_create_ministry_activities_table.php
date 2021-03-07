<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMinistryActivitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ministry_activities', function (Blueprint $table) {
            $table->id();
            $table->integer('ministry_id');
            $table->string('activity_name');
            $table->string('activity_day');
            $table->text('description');
            $table->time('start_time');
            $table->time('end_time');
            $table->integer('status')->default(1);
            $table->integer('created_by')->nullable();
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
        Schema::dropIfExists('ministry_activities');
    }
}
