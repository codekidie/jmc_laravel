<?php

class Image extends Eloquent {
	protected $fillable = array('filename','filesize','url');
	public $timestamps = false;
	public function sliders(){
		return $this->belongsToMany('Slider');
	}
	public function post(){
		return $this->hasOne('Post');
	}
}