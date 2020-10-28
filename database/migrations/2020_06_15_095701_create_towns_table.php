<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTownsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('towns', function (Blueprint $table) {
            $table->increments('id_code');
            $table->string('id');
            $table->string('name');
            $table->string('cover');
            $table->string('latitude');
            $table->string('longitude');
            $table->string('facebook');
            $table->string('instagram_id');
            $table->string('telephone');
            $table->string('website');
            $table->longText('resume_en');
            $table->longText('resume_it');
            $table->longText('description_en');
            $table->longText('description_it');
            $table->longText('images');
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
        Schema::dropIfExists('towns');
    }
}
