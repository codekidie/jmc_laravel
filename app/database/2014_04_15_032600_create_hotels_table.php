<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateHotelsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('hotels', function(Blueprint $table) {
			$table->increments('id');
			$table->string('hotel_name');
			$table->text('addressline1');
			$table->text('addressline2');
			$table->integer('zipcode');
			$table->string('city');
			$table->string('state');
			$table->string('country');
			$table->integer('countryisocode');
			$table->float('star_rating');
			$table->text('longitude');
			$table->text('latitude');
			$table->text('url');
			$table->string('checkin');
			$table->string('checkout');
			$table->integer('numberrooms');
			$table->integer('numberfloors');
			$table->string('yearopened');
			$table->string('yearrenovated');
			$table->text('photo1');
			$table->text('photo2');
			$table->text('photo3');
			$table->text('photo4');
			$table->text('photo5');
			$table->text('overview');
			$table->string('rates_from');
			$table->string('continent_name');
			$table->integer('number_of_reviews');
			$table->float('rating_average');
			$table->string('rates_currency');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('hotels');
	}

}
