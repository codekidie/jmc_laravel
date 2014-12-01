<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMenusPageTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('menu_page', function(Blueprint $table) {
			$table->increments('id');
			$table->integer('menu_id')->unsigned()->index();
			$table->foreign('menu_id')->references('id')->on('menus')->onDelete('cascade');
			$table->integer('page_id')->unsigned()->index();
			$table->foreign('page_id')->references('id')->on('pages')->onDelete('cascade');
			$table->integer('order');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('menus_page');
	}

}
