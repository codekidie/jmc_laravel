<?php

class Badge extends \Eloquent {
	protected $fillable = ["title","logo","details"];
	protected $table = "badges";

	public function establishment()
    {
        return $this->hasOne('Establishment','identifier','establishment_id');
    }
}
