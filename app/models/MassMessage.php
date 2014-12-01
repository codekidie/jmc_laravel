<?php

class MassMessage extends \Eloquent {
	protected $fillable = ["subject","message"];
	protected $table = "massmessages";	
	
}