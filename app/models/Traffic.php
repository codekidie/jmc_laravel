<?php

class Traffic extends \Eloquent {
	protected $fillable = ["ip_address","user_agent","hotel_id","date"];
	public $timestamps = false;

	public static function generate($id){
		self::create(array('ip_address'=>$_SERVER['REMOTE_ADDR'],
						   'user_agent'=>$_SERVER['HTTP_USER_AGENT'],
						   'hotel_id'=>$id,
						   'date'=>Helper::currentDate()));
	}

	public static function countTraffic(){
		return count(self::all());
	}

	public static function countTrafficbyID($id){
		$traffic = DB::table('traffic')
					   ->select(DB::raw('count(*) as traffic, hotel_id'))
					   ->where('hotel_id',$id)
					   ->groupBy('hotel_id')
					   ->get();
		return $traffic[0]->traffic;
	}

	public static function getTrafficJSON($startDate,$endDate,$limit){
		$result = DB::table('traffic')
					    ->where('date','<=',$endDate)
					    ->where('date','>=',$startDate)
					    ->groupBy('date')
					    ->orderBy('date', 'ASC')
					    ->limit($limit)
					    ->get([
					      DB::raw('Date(date) as date'),
					      DB::raw('COUNT(*) as value')
					    ]);
		if(count($result) == 0){
			$result = array(array("date"=>$startDate,
				   "value"=>0));
		}
		return Response::json($result);

		
	}
}