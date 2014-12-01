<?php

class Role extends Eloquent {
	protected $fillable = array('role');
	public $timestamps = false;
	public function users(){
		return $this->belongsToMany('User');
	}
}