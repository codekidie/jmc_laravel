<?php

class Category extends \Eloquent {
	protected $fillable = array("name","description");
	public $timestamps = false;
	public function posts(){
		return $this->belongsToMany('Post');
	}

}