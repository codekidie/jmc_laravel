<?php

class Message extends Eloquent {
	protected $fillable = array("subject","email","message","create_at","updated_at");
}