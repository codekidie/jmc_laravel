<?php

class Page extends Eloquent {
	protected $fillable = array("title","details","slug");
	public $timestamps = false;
	function menus(){
		return $this->belongsToMany('Menu')->withPivot('menu_order','slug_keyword');
	}
}