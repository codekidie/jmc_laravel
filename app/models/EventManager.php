<?php

class EventManager extends \Eloquent {
	protected $fillable = ["title","location","start","end","logo","description","organizer","organizerDescription","establishment_id"];
	protected $table = "events";

	public static function add($title,$location,$start,$end,$logo,$description,$organizer,$organizerdescription){	
		
			$filename = str_random(6) . '_' . $logo->getClientOriginalName();
		
			$destinationPath = '_assets/events_logo';
				 
			$upload_success = $logo->move($destinationPath, $filename);
			if( $upload_success ) {
				return self::create(array('title'=>$title,
								  'location'=>$location,
								  'start'=>$start,
								  'end'=>$end,
								  'logo'=>$filename,
								  'description'=>$description,
								  'organizer'=>$organizer,
								  'organizerDescription'=>$organizerdescription,
								  'establishment_id'=>Auth::user()->establishment_id,
								  ));
			} else {
			 		  return Redirect::to('bloodbank/events/create')->with("globals-error","Error Saving Event");
				   }
			
		}	
		
}