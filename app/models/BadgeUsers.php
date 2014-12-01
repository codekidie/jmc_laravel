<?php

class BadgeUsers extends \Eloquent {
	protected $fillable = ['badge_id','user_id'];
	protected $table = "badge_users";
}