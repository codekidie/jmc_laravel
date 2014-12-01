<?php

class Setting extends \Eloquent {
	protected $fillable = ["title","subscribe_text","logo","url","facebook_url","twitter_url","linkedin_url","gplus_url","pinterest_url","upload_directory"];
	public $timestamps = false;

	public static function updateSettings($data){
		$rules = array("title"=>"required",
			           "url"=>"required");
		$v = Validator::make($data,$rules);
		if($v->fails()){
			return $v->messages();
		}else{
			$s = self::find(1);
			$s->title = $data['title'];
			$s->url = $data['url'];
			$s->subscribe_text = $data['news'];
			$s->facebook_url = $data['fb_url'];
			$s->twitter_url = $data['tw_url'];
			$s->linkedin_url = $data['in_url'];
			$s->gplus_url = $data['gplus_url'];
			$s->pinterest_url = $data['pin_url'];
			$s->upload_directory = $data['upload_url'];
			$s->save();
			Session::flash('message', Helper::message('Successfully Updated!'));
			return true;
		}
			
	}
	public static function getOptions(){
		$o = self::find(1)->get();
		foreach($o as $s){
			return $s;
		}
	}
}