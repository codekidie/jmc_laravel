<?php

class UserController extends BaseController {
	public function __construct(){
		$this->beforeFilter("auth",array("only"=>array("index","create","store","destroy","edit","update")));
		$this->beforeFilter('is_admin_active',array("only"=>array("index","edit")));
		
	}
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		
		$data = Input::all();

		if (isset($data['form_view'])) {
			$u = new User;
					$u->username = $data["username"];
					$u->password = Hash::make($data["password"]);
					$u->email = $data["email"];
					$u->firstname = $data["firstname"];
					$u->lastname = $data["lastname"];
					$u->age = $data["age"];
					$u->bloodtype = $data["bloodtype"];
					$u->gender = $data["gender"];
					$u->contactnumber = $data["contactnum"];
					$u->status = 1;

					$u->role = "client";
				if ($u->save()) {

					echo "<script type='text/javascript'>";
					echo "alert('Registration Successful')";
					echo "</script>";
				

					
				}	
		}else{
				$profilepic  = $data['profilepic'];
				
				$rules = array("username"=>"required|unique:users","password"=>"required|min:8|confirmed",
							   "email"=>"required|email","firstname"=>"required","lastname"=>"required",
							   "password_confirmation"=>"required","age"=>"required","gender"=>"required",
							   "contactnum"=>"required");
				$v = Validator::make($data,$rules);
				if($v->fails()){
					return Redirect::to('profile')->withErrors($v)->withInput();
				}
				else{
					$filename = str_random(6) . '_' . $profilepic->getClientOriginalName();

					$u = new User;
					$u->username = $data["username"];
					$u->password = Hash::make($data["password"]);
					$u->email = $data["email"];
					$u->firstname = $data["firstname"];
					$u->lastname = $data["lastname"];
					$u->role = $data["role"];
					$u->profilepic = $filename;
					$u->age = $data["age"];
					$u->bloodtype = $data["bloodtype"];
					$u->gender = $data["gender"];
					$u->location = $data['location'];
					$u->establishment_id = $data['establishment_id'];
					
					
					$u->contactnumber = $data["contactnum"];

						
					$u->status = 1;	

					 $data = array("username"=>$data["username"],
					 	          "password"=>$data["password"],
					 	          "email"=>$data["email"]);
					 Mail::send('emails.welcome',$data,function($message) use ($data){
					 	$message->to($data['email'])->subject("Bloodhuntphil Login Credential");
					 });
					 
					if($u->save()){

						$destinationPath = '_assets/users_pic';
						
						$upload_success = $profilepic->move($destinationPath, $filename);
						if( $upload_success ) {
						   return Redirect::to('profile')->with("globals","New User ".$u->username." Successfully Added");
						} 
						else {
					 	   return Redirect::to('profile')->with("globals","New User ".$u->username." Failed  Saving !");
							 }
					}
			}		
		}
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show()
	{
		$users = User::all();
		
		foreach($users as $u){
		if($u->username == "admin")continue;
			$t = "<tr><td>".$u->username."</td>";
			$t .="<td>";
			if(Auth::user()->id == $u->id || Auth::user()->role == "admin"):
				$t .="<a href='profile/edit/$u->id' class=\"user_link\" id='$u->id'>
	                        <i class='fa fa-pencil'></i> Edit</a>";
			endif;
			$t .="<a href='profile/delete/$u->id' class='user_link' id='$u->id'>
	                        <i class='fa fa-trash-o'></i> Delete</a>";
	        $t .="</td></tr>";

			echo $t;
		}

	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit()
	{
		$u = User::find(Auth::user()->id);
		$users = User::all();
		$data = array("page_title"=>"Edit Profile",
					  "user"=>$u,
					  "users"=>$users);
		return View::make('administrator.profile.index',$data);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update()
	{
		// Validate Users Inputs
		$input = Input::all();
		$rules = array("username"=>'required',
					   "password"=>'confirmed',
					   "email"=>"email",
					   "firstname"=>"required",
					   "lastname"=>"required",
					   "location"=>"required");

		$message = array("required"=>Helpers::errorLabel("is empty."),
						 "email"=>Helpers::errorLabel("is not valid!"));
		$v = Validator::make($input,$rules,$message);
		if($v->fails()){
			return Redirect::to('profile')->withErrors($v)->withInput();
		}
		else{

			$u = User::find(Input::get('user_id'));
			$u->username = Input::get('username');
			$u->email = Input::get('email');
			$u->firstname = Input::get('firstname');
			$u->lastname = Input::get('lastname');
			$u->location = Input::get('location');
			// check if the password is not empty
			if(Input::get('password') !=""){
				$u->password = Hash::make(Input::get('password'));
			}
			if(Input::get('role') !=""){
				$u->role = Input::get('role');
			}
			$u->status = 1;
			$u->save();
			$data = array("username"=>Input::get('username'),
						  "password"=>Input::get('password'),
						  "email"=>Input::get('email'),
						  "firstname"=>Input::get('firstname'));
			Mail::send('emails.update',$data,function($message) use ($data){
				$message->to($data['email'])->subject("Bloodhuntphil Login Credential");
			});
			
			Session::flash('message',Helpers::message("Successfully Updated"));
			return Redirect::to('profile');

		}
	}

	/*
	  Edit Sing User
	*/

	public function edit_user($id){
		$u = User::find($id);
		$data = array("page_title"=>"Edit User",
					  "user"=>$u);
		return View::make("administrator.profile.edit",$data);
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$u = User::find($id);
		$u->delete();
		return Redirect::to("profile");
	}

}