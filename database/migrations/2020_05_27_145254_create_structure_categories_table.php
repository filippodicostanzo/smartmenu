<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStructureCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('structure_categories', function (Blueprint $table) {
            $table->increments('id_code');
            $table->string('id');
            $table->string('name_en');
            $table->string('name_it');
            $table->string('cover');
            $table->string('icon');
            $table->string('icon_svg');
            $table->string('map');
            $table->longText('description_en');
            $table->longText('description_it');
            $table->boolean('visible');
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
        Schema::dropIfExists('structure_categories');
    }
}
