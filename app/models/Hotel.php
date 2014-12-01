<?php

class Hotel extends Eloquent {
	protected $fillable = array("hotel_name","addressline1","addressline2",
							    "zipcode","city","state","country","state",
							    "countryisocode","star_rating","longitude","latitude",
							    "latitude","url","checkin","checkout",
							    "numberrooms","numberfloors","yearopened",
							    "yearrenovated","photo1","photo2","photo3","photo4","photo5",
							    "overview","rates_from","continent_name","number_of_reviews",
							    "rating_average","rates_currency");
	public $timestamps = false;

	public function providers(){
		return $this->hasMany("Provider");
	}
	public function featured(){
		return $this->hasOne("FeaturedHotel");
	}
	public static function countHotelsbyCity($city){
		return count(self::where('city',$city)->get());
	}
	public static function getRelatedHotels($name,$country){
		return self::where('country',$country)
					->where('hotel_name','!=',$name)->get();
	}
	public static function getAllHotelsbyCountry($continent,$country){
		$continent = Helper::unslug($continent);
		$country = Helper::unslug($country);
		return self::where('country',$country)
					->where('continent_name',$continent)
					->orderBy('country','ASC')
					->paginate(6);
	}
	public static function getAllHotelsbyContinent($continent){
		$continent = Helper::unslug($continent);
		return self::where('continent_name',$continent)
					->orderBy('continent_name','ASC')
					->paginate(6);
	}
	public static function getAllHotelsbyCity($continent,$country,$city){
		$city = Helper::unslug($city);
		$country = Helper::unslug($country);
		$continent = Helper::unslug($continent);
		return self::where('city',$city)
					->where('country',$country)
					->where('continent_name',$continent)
					->orderBy('city','ASC')
					->paginate(6);
	}
	public static function getHotelSpecific($continent,$country,$city,$slug){
		$country = Helper::unslug($country);
		$continent = Helper::unslug($continent);
		$city = Helper::unslug($city);
		return self::where('country',$country)
					->where('continent_name',$continent)
					->where('city',$city)
					->where('slug',$slug)->get();
	}
	public static function getAllCitiesbyContinent($continent){
		$continent = Helper::unslug($continent);
		return self::where('continent_name',$continent)
					->groupBy('city')
					->limit(20)
					->get();
	}
	public static function getAllCitiesbyCountry($country){
		$country = Helper::unslug($country);
		return self::where('country',$country)
					->groupBy('city')
					->limit(20)
					->get();
	}
	public static function findHotel($keyword){
		$records = self::where('hotel_name','LIKE',"%$keyword%")
						 ->orWhere('slug','LIKE',"%$keyword%")
						 ->orWhere('continent_name','LIKE',"%$keyword%")
						 ->orWhere('city','LIKE',"%$keyword%")
						 ->orWhere('country','LIKE',"%$keyword%")
						 ->orWhere('zipcode','LIKE',"%$keyword%")
						 ->orWhere('addressline1','LIKE',"%$keyword%")
						 ->get();
		return $records;
	}	

}