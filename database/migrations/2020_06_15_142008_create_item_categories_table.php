<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateItemCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('item_categories', function (Blueprint $table) {
            $table->increments('id_code');
            $table->string('id');
            $table->string('name_en');
            $table->string('name_it');
            $table->string('cover')->nullable();
            $table->longText('description_en')->nullable();
            $table->longText('description_it')->nullable();
            $table->boolean('visible');
            $table->bigInteger('user_id')->unsigned();
            $table->timestamps();
        });


        Schema::table('item_categories', function(Blueprint $table) {
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
        Schema::dropIfExists('item_categories');
    }
}
