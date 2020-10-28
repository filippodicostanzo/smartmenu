<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStructuresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('structures', function (Blueprint $table) {
            $table->increments('id_code');
            $table->string('id');
            $table->string('name');
            $table->string('address');
            $table->integer('town_id')->unsigned();
            $table->string('logo');
            $table->string('cover');
            $table->integer('category_id')->unsigned();
            $table->string('subcategories');
            $table->string('latitude');
            $table->string('longitude');
            $table->string('telephone');
            $table->string('email');
            $table->string('website')->nullable();
            $table->string('tripadvisor')->nullable();
            $table->string('facebook')->nullable();
            $table->string('facebook_album')->nullable();
            $table->string('instagram')->nullable();
            $table->longText('description_en');
            $table->longText('description_it');
            $table->longText('images')->nullable();
            $table->boolean('sponsored');
            $table->boolean('visible');
            $table->timestamps();

        });

        Schema::table('structures', function(Blueprint $table) {
            $table->foreign('town_id')->references('id_code')->on('towns')->onDelete('cascade')->onUpdate('cascade');
        });

        Schema::table('structures', function(Blueprint $table) {
            $table->foreign('category_id')->references('id_code')->on('structure_categories')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('structures');
    }
}
