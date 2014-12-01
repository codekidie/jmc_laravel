<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddIdentifierToEstablishments extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('establishments', function(Blueprint $table)
		{
			$table->text('identifier');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('establishments', function(Blueprint $table)
		{
			$table->dropColumn('identifier');
		});
	}

}
