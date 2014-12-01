<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateKeywordPostTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('keyword_post', function(Blueprint $table) {
			$table->increments('id');
			$table->integer('keyword_id')->unsigned()->index();
			$table->foreign('keyword_id')->references('id')->on('keywords')->onDelete('cascade');
			$table->integer('post_id')->unsigned()->index();
			$table->foreign('post_id')->references('id')->on('posts')->onDelete('cascade');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('keyword_post');
	}

}
