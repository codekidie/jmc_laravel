<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateTrafficTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('traffic', function(Blueprint $table) {
			$table->increments('id');
			$table->string('ip_address');
			$table->string('user_agent');
			$table->text('visited');
			$table->date('date');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('traffic');
	}

}
