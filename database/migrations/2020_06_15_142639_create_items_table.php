<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('items', function (Blueprint $table) {
            $table->increments('id_code');
            $table->string('id');
            $table->integer('category_id')->unsigned();
            $table->string('name_en');
            $table->string('name_it');
            $table->string('cover')->nullable();
            $table->integer('structure_id')->unsigned();
            $table->boolean('visible');
            $table->string('view');
            $table->string('price')->nullable();
            $table->longText('ingredients')->nullable();
            $table->longText('allergens')->nullable();
            $table->longText('features')->nullable();
            $table->string('wine_winery')->nullable();
            $table->string('wine_year')->nullable();
            $table->string('format')->nullable();
            $table->string('vol')->nullable();
            $table->string('wine_type')->nullable();
            $table->string('wine_doc')->nullable();
            $table->string('wine_region')->nullable();
            $table->longText('description_en')->nullable();
            $table->longText('description_it')->nullable();
            $table->bigInteger('user_id')->unsigned();
            $table->timestamps();
        });


        Schema::table('items', function(Blueprint $table) {
            $table->foreign('category_id')->references('id_code')->on('item_categories')->onDelete('cascade')->onUpdate('cascade');
        });

        Schema::table('items', function(Blueprint $table) {
            $table->foreign('structure_id')->references('id_code')->on('structures')->onDelete('cascade')->onUpdate('cascade');
        });

        Schema::table('items', function(Blueprint $table) {
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
        Schema::dropIfExists('items');
    }
}
