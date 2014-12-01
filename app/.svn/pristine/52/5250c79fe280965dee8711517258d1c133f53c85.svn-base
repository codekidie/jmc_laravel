<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateImageSliderTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('image_slider', function(Blueprint $table) {
			$table->increments('id');
			$table->integer('image_id')->unsigned()->index();
			$table->foreign('image_id')->references('id')->on('images')->onDelete('cascade');
			$table->integer('slider_id')->unsigned()->index();
			$table->foreign('slider_id')->references('id')->on('sliders')->onDelete('cascade');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('image_slider');
	}

}
