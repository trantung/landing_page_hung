<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSizeKindTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
    {
        Schema::create('size_kind', function(Blueprint $table) {
            $table->increments('id');
            $table->integer('size_id');
            $table->integer('kind_id');
            $table->integer('product_id');
            $table->string('price')->default(0);
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
        Schema::dropIfExists('size_kind');
    }

}
