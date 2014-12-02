<?php

class Event_Manager extends \Eloquent {
	protected $table = 'events';
	protected $fillable = ['title','event_start','event_end','event_details','location'];
	
}