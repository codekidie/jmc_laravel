<?php

class Widget extends \Eloquent {
	protected $fillable = ["name","title","icon","description","text_html","slug"];
	public $timestamps = false;

	public static function add($data){
		return self::create(array("name"=>$data['name'],
								  "title"=>$data['title'],
								  "slug"=>Helper::slug($data['name']),
								  "icon"=>$data['icon_url'],
								  "description"=>$data['description'],
								  "text_html"=>$data['text_html']));
	}
	public static function get($slug=null){
		if($slug !=null){
			foreach(self::where('slug',$slug)->get() as $w){
				return $w;
			}
		}else{
			return self::all();
		}
		
	}

	public static function edit($id){
		$o = self::find($id);
		return $o;
	}

	public static function getUpdate($id,$data){
		$w = self::find($id);
		$w->name = $data['name'];
		$w->title = $data['title'];
		$w->description = $data['description'];
		$w->icon = $data['icon_url'];
		$w->text_html = $data['text_html'];
		$w->slug = Helper::slug($data['name']);
		$w->save();
	}

	public static function getDelete($id){
		$w = self::find($id);
		$w->delete();
	}
}