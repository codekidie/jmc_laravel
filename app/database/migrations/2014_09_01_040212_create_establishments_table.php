<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateEstablishmentsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('establishments', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name');
			$table->string('tagline');
			$table->string('license_number');
			$table->string('email');
			$table->string('location');
			$table->string('contact_number');
			$table->string('website');
			$table->text('logo');
			$table->date('date_start');
			$table->date('date_end');
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
		Schema::drop('establishments');
	}

}
