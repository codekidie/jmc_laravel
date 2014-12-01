<?php

class EventJoined extends \Eloquent {
	protected $fillable = ['establishment_id','status','event_id'];
	protected $table = "events_users";
}