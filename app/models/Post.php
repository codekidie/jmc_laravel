<?php

class Post extends Eloquent {
	protected $fillable = array("title","content","created_at",
							    "updated_at","featured_image",
							    "tempate","status");

	public function categories(){
		return $this->belongsToMany('Category');
	}
	public function keywords(){
		return $this->belongsToMany('Keyword');
	}
	public function image(){
		return $this->belongsTo('Image');
	}
}