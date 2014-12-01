<?php

class Slider extends \Eloquent {
	// protected $fillable = array('name','description','status');
	public $timestamps = false;
	public function images(){
		return $this->belongsToMany('Image');
	}
}