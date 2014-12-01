<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddFacebookToSettingsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('settings', function(Blueprint $table)
		{
			$table->text('facebook_url');
			$table->text('twitter_url');
			$table->text('linkedin_url');
			$table->text('gplus_url');
			$table->text('pinterest_url');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('settings', function(Blueprint $table)
		{
			$table->dropColumn('facebook_url');
			$table->dropColumn('twitter_url');
			$table->dropColumn('linkedin_url');
			$table->dropColumn('gplus_url');
			$table->dropColumn('pinterest_url');
		});
	}

}
