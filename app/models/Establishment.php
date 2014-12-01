<?php

class Establishment extends \Eloquent {
	protected $fillable = ["name","tagline","license_number","location","contact_number","website","identifier"];
	protected $table = "establishments";

	public function user()
    {
        return $this->belongsTo('User');
    }

    public function bloodstack()
    {
        return $this->belongsTo('BloodUnit');
    }

    public function badge()
    {
        return $this->belongsTo('Badge');
    }

    public static function getTweets($id,$count=5){
        $establishment = Establishment::find($id);
        
        $tw = Twitter::getUserTimeline(array('screen_name' => $establishment->tw_username, 'count' => $count, 'format' => 'array'));
        
        return $tw;
    }
}