<?php

class BloodUnit extends \Eloquent {
	protected $fillable = ["o","ab","a","b"];
	protected $table  = "bloodstack";

	public function establishment()
    {
        return $this->hasOne('Establishment','identifier','establishment_id');
    }


	
}