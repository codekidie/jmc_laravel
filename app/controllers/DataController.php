<?php
Class DataController extends \BaseController {
	public function __construct(){
		$this->beforeFilter("auth",array("only"=>array("index","create","store","destroy","edit","update")));
		// $this->beforeFilter("is_admin_active",array("only"=>array("index")));
	}
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$data = array('page_title'=>'Import Page',
					  'total_records'=>Hotel::all(),
			          'records'=>$this->getRecords());
		// return View::make('import_csv');
		return View::make('administrator.import',$data);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create(){
		/*USAGE:
			   #Make sure the document has only 1 sheet, if not it will
			   show an error regarding offsets
		*/
		//VALIDATE IF IT IS AN XLS OR CSV
		$message = array("required"=>Helpers::errorLabel("Please select a file before submitting!"),
			           "mimes"=>Helpers::errorLabel("Select an xls,csv or xlsx file types only!"));
		$v = Validator::make(array("xls"=>Input::file('xls')),array("xls"=>'required|mimes:xls,csv,xlsx'),$message);

		if($v->fails()){
			return Redirect::to('administrator/import')->withErrors($v);
		}
		else{
			$name = Input::file('xls')->getClientOriginalName();
			Input::file('xls')->move(base_path(),$name);

			$count = count(Excel::load(base_path()."\\$name")->toArray());
			$columns = array(3,6,9,10,11,12,
							13,14,15,16,17,18,
							19,20,21,22,23,24,25,
							26,27,28,29,30,31,32,34,
							37,38,39);
			$data[] = Excel::load(base_path()."\\$name")->select($columns)->toArray();
				// echo count($data);
			// $hotel->hotel_name = "first";
			// $hotel->save();
			 foreach($data as $c){	

			  	for($i=1;$i<$count;$i++){
			  		// $i is for rows returned
			  		$hotel = new Hotel;
			  		$hotel->hotel_name = $c[$i][6]; // Column 1
			  		// $hotel->slug = Helper::slug($c[$i][6]);
			  		$hotel->addressline1 = $c[$i][9]; // Column 2
			  		$hotel->addressline2 = $c[$i][10]; // Column 3
			  		$hotel->zipcode = $c[$i][11]; // Column 4
			  		$hotel->city = $c[$i][12];
			  		$hotel->state = $c[$i][13];
			  		$hotel->country = $c[$i][14];
			  		$hotel->countryisocode = $c[$i][15];
			  		$hotel->star_rating = $c[$i][16];
			  		$hotel->longitude = $c[$i][17];
			  		$hotel->latitude = $c[$i][18];
			  		$hotel->url = $c[$i][19];
			  		$hotel->checkin = $c[$i][20];
			  		$hotel->checkout = $c[$i][21];
			  		$hotel->numberrooms = $c[$i][22];
			  		$hotel->numberfloors = $c[$i][23];
			  		$hotel->yearopened = $c[$i][24];
			  		$hotel->yearrenovated = $c[$i][25];
			  		$hotel->photo1 = $c[$i][26];
			  		$hotel->photo2 = $c[$i][27];
			  		$hotel->photo3 = $c[$i][28];
			  		$hotel->photo4 = $c[$i][29];
			  		$hotel->photo5 = $c[$i][30];
			  		$hotel->overview = $c[$i][31];
			  		$hotel->rates_from = $c[$i][32];
			  		$hotel->continent_name = $c[$i][34];
			  		$hotel->number_of_reviews  = $c[$i][37];
			  		$hotel->rating_average  = $c[$i][38];
			  		$hotel->rates_currency = $c[$i][39];
			  		$hotel->save();
			  	}//end for
			  	
			}//end foreach
			$rows = array('rows'=>$data[] = Excel::load(base_path()."\\$name")->select($columns)->toArray(),
						  'count'=>$count);
			Session::flash('message',Helpers::message('Excel file imported successfully!'));
		    return Redirect::to('administrator/import');
			}//end else for validation
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function uploadFile(){
		
		$name = Input::file('Filedata')->getClientOriginalName();
		Helper::deleteExcelFile($name);
		Input::file('Filedata')->move(base_path(),$name);

		$count = count(Excel::load(base_path()."\\$name")->toArray());
		$columns = array(1,3,6,9,10,11,12,
						13,14,15,16,17,18,
						19,20,21,22,23,24,25,
						26,27,28,29,30,31,32,34,
						37,38,39);
		$data[] = Excel::load(base_path()."\\$name")->select($columns)->toArray();

		 foreach($data as $c){	

		  	for($i=1;$i<$count;$i++){
		  		// $i is for rows returned
		  		$hotel = new Hotel;
		  		$hotel->the_id = $c[$i][1];
		  		$hotel->hotel_name = $c[$i][6]; // Column 1
		  		$hotel->slug = Helper::slug($c[$i][6]); // Column 1
		  		$hotel->addressline1 = $c[$i][9]; // Column 2
		  		$hotel->addressline2 = $c[$i][10]; // Column 3
		  		$hotel->zipcode = $c[$i][11]; // Column 4
		  		$hotel->city = $c[$i][12];
		  		$hotel->state = $c[$i][13];
		  		$hotel->country = $c[$i][14];
		  		$hotel->countryisocode = $c[$i][15];
		  		$hotel->star_rating = $c[$i][16];
		  		$hotel->longitude = $c[$i][17];
		  		$hotel->latitude = $c[$i][18];
		  		$hotel->url = $c[$i][19];
		  		$hotel->checkin = $c[$i][20];
		  		$hotel->checkout = $c[$i][21];
		  		$hotel->numberrooms = $c[$i][22];
		  		$hotel->numberfloors = $c[$i][23];
		  		$hotel->yearopened = $c[$i][24];
		  		$hotel->yearrenovated = $c[$i][25];
		  		$hotel->photo1 = $c[$i][26];
		  		$hotel->photo2 = $c[$i][27];
		  		$hotel->photo3 = $c[$i][28];
		  		$hotel->photo4 = $c[$i][29];
		  		$hotel->photo5 = $c[$i][30];
		  		$hotel->overview = $c[$i][31];
		  		$hotel->rates_from = $c[$i][32];
		  		$hotel->continent_name = $c[$i][34];
		  		$hotel->number_of_reviews  = $c[$i][37];
		  		$hotel->rating_average  = $c[$i][38];
		  		$hotel->rates_currency = $c[$i][39];
		  		$hotel->save();
		  	}//end for
		  	
		}//end foreach
		
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */	
	public function show($id){
		$h = Hotel::find($id);
		if($h){
			$data = array('page_title'=>$h->hotel_name,
						  'hotel'=>$h);
			return View::make('administrator.hotels.show',$data);
		}else{
			return Redirect::to('404');
		}
	}

	public function findHotel(){
		if(Request::ajax()){
			$keyword = Input::get('keyword');
			$results = $this->setSearchRecords($keyword);
			if(count($results) > 0){
				return $results;
			}else{
				return 0;
			}
		}
		else{
			return Redirect::to('administrator/import');
			
		}
		
	}
	protected function getRecords(){
		$h = Hotel::orderBy("hotel_name")->paginate(20);
		return $h;
	}

	protected function setSearchRecords($keyword){
		$search = Hotel::findHotel($keyword);
		return $search;
	}

}