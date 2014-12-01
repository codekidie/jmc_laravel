<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMassmessages extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('massmessages', function(Blueprint $table)
		{
			$table->increments('id');
			$table->text('client_id');
			$table->text('subject');
			$table->text('message');
			$table->text('establishment_id');
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
		Schema::drop('massmessages');
	}

}
