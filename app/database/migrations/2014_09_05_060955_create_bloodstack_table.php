<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateBloodstackTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('bloodstack', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('o')->nullable()->default(18);
			$table->integer('ab')->nullable()->default(18);
			$table->integer('a')->nullable()->default(18);
			$table->integer('b')->nullable()->default(18);
			$table->integer('establishment_id')->default(18);
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
		Schema::drop('bloodstack');
	}

}
