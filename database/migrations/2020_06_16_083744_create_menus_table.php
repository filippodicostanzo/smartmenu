<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('menus', function (Blueprint $table) {
            $table->increments('id_code');
            $table->string('id');
            $table->string('name_en');
            $table->string('name_it');
            $table->string('cover')->nullable();
            $table->integer('structure_id')->unsigned();
            $table->boolean('visible');
            $table->longText('items');
            $table->string('order')->default(0);
            $table->string('price');
            $table->string('price_view');
            $table->longText('description_en');
            $table->longText('description_it');
            $table->bigInteger('user_id')->unsigned();
            $table->timestamps();
        });

        Schema::table('menus', function(Blueprint $table) {
            $table->foreign('structure_id')->references('id_code')->on('structures')->onDelete('cascade')->onUpdate('cascade');
        });

        Schema::table('menus', function(Blueprint $table) {
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
        Schema::dropIfExists('menus');
    }
}
