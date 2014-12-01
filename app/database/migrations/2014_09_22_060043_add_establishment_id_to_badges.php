<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddEstablishmentIdToBadges extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('badges', function(Blueprint $table)
		{
			$table->string('establishment_id');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('badges', function(Blueprint $table)
		{
			$table->dropColumn('establishment_id');
		});
	}

}
