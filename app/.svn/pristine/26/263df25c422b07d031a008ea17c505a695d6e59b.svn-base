<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateKeywordPageTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('keyword_page', function(Blueprint $table) {
			$table->increments('id');
			$table->integer('keyword_id')->unsigned()->index();
			$table->foreign('keyword_id')->references('id')->on('keywords')->onDelete('cascade');
			$table->integer('page_id')->unsigned()->index();
			$table->foreign('page_id')->references('id')->on('pages')->onDelete('cascade');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('keyword_page');
	}

}
