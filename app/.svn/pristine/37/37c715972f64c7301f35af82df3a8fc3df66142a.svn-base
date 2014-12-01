<?php

class Menu extends \Eloquent {
	protected $fillable = array("name","description","create_at","updated_at");
	public $timestamps = false;
	public $table = 'menus';
	public function pages(){
		return $this->belongsToMany('Page')->withPivot('menu_order','slug_keyword');
	}
}