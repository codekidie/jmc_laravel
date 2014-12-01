<?php

class LoginController extends BaseController {
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		if(! Auth::check()){
			return View::make('administrator.login');
		}
		else{
			return Redirect::to('administrator');
		}
	}

	public function authenticate(){
		$data = Input::all();
		$rules = array("username"=>"required","password"=>"required");
		$v = Validator::make($data,$rules);
		if($v->fails()){
			return $v->messages();
		}
		else{
			
			$data = array("username"=>$data['username'],
						  "password"=>$data['password']);
			
			if(Auth::attempt($data,true)){
				if (Request::ajax()) {
					
					if(Auth::user()->role == "admin")
					{
					  return 1;	
					}	
					else if(Auth::user()->role == "client")
					{
					  return 3;
					}
					else if (Auth::user()->role == "medtech") {
						return 4;
					}
					else {
						return 2;
					}
					
				}
			else{
				return 2;
			}

		    }
		}
	}

}