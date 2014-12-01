<?php

class News extends \Eloquent {
	protected $fillable = ["title","content","establishment_id","media_type"];
	protected $table = 'news';

	
}