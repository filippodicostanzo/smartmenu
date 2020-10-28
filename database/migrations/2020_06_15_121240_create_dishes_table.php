<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDishesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dishes', function (Blueprint $table) {
            $table->increments('id_code');
            $table->string('id');
            $table->string('name_en');
            $table->string('name_it');
            $table->string('cover');
            $table->integer('structure_id')->unsigned();
            $table->boolean('visible');
            $table->string('view');
            $table->string('price');
            $table->longText('ingredients');
            $table->longText('allergens');
            $table->longText('features');
            $table->longText('description_en');
            $table->longText('description_it');
            $table->bigInteger('user_id')->unsigned();
            $table->timestamps();
        });

        Schema::table('dishes', function(Blueprint $table) {
            $table->foreign('structure_id')->references('id_code')->on('structures')->onDelete('cascade')->onUpdate('cascade');
        });

        Schema::table('dishes', function(Blueprint $table) {
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('dishes');
    }
}
