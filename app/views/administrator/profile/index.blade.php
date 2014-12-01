@extends('administrator.master')
@include('administrator.header')
  @section('page-content')
  <div class="row">
    <div class="col-lg-12">
            <h1>Profile</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class="active"><i class="fa fa-edit"></i> Profile</li>
            </ol>
            @if (Session::get('globals')) 
                <div class="alert alert-warning"> {{Session::get('globals')}}</div>
            @endif
     </div>
  	<!-- START USER PROFILE FORM -->
        <div class="col-lg-4">
        	{{Session::get('message')}}
        	<h3>User's Profile</h3>
        	{{Form::open(array('url'=>'profile/update','files'=>true))}}
                {{Form::hidden('user_id',Auth::user()->id)}}
        		
                <div class="form-group">
        			<label for="">Username</label>
        			{{$errors->first('username')}}
        			{{Form::text('username',Auth::user()->username,array("class"=>"form-control"))}}
        		</div>
        		<div class="form-group">
        			<label for="">Email</label>
        			{{$errors->first('email')}}
        			{{Form::text('email',Auth::user()->email,array("class"=>"form-control"))}}
        		</div>
        		<div class="form-group">
        			<label for="">First Name</label>
        			{{$errors->first('firstname')}}
        			{{Form::text('firstname',Auth::user()->firstname,array("class"=>"form-control"))}}
        		</div>
        		<div class="form-group">
        			<label for="">Last Name</label>
        			{{$errors->first('lastname')}}
        			{{Form::text('lastname',Auth::user()->lastname,array("class"=>"form-control"))}}
        		</div>

        		<div class="form-group">
        			<label for="">Location</label>
        			{{$errors->first('location')}}
        			{{Form::text('location',Auth::user()->location,array("class"=>"form-control"))}}
        		</div>

	        	<!-- Change Password -->
        		<div class="form-group">
        			<h3>Change Your Password</h3>
        			<label for="">Password</label>
        			{{Form::password('password',array("class"=>"form-control"))}}
        		</div>
        		<div class="form-group">
        			<label for="">Confirm</label>
        			{{Form::password('password_confirmation',array("class"=>"form-control"))}}
        		</div>

        		<div class="form-group">
        			{{Form::submit('Update Profile',array("class"=>"btn btn-primary"))}}
        		</div>
        	{{Form::close()}}
        </div>
  	<!-- END USER PROFILE FORM -->

    <!-- START CREATE USER PROFILE -->
        <div class="col-lg-4" id="user-form">
            <h3>Create New User</h3>
            {{Form::open(array('url'=>'profile/store','files'=>true))}}
        
                <div class="form-group">
                    <label for="">Profile Picture</label>
                    {{Form::file('profilepic',array("class"=>"form-control",
                                                 "id"=>"c_profilepic"))}}
                </div>
                <div class="form-group" id="frm_username">
                <label for="">Username</label>
                 {{$errors->first('username')}}

                {{Form::text('username','',array("class"=>"form-control",
                                                 "id"=>"c_username"))}}
                </div>

                 <div class="form-group" id="frm_username">
                <label for="">Location</label>
                 {{$errors->first('location')}}

                {{Form::text('location','',array("class"=>"form-control",
                                                 "id"=>"c_username"))}}
                </div>

                <div class="form-group" id="frm_email">
                    <label for="Email">Email</label>
                {{$errors->first('email')}}

                    {{Form::text('email','',array("class"=>"form-control",
                                                 "id"=>"c_email"))}}
                </div>
                <div class="form-group" id="frm_password">
                    <label for="password">Password</label>
                 {{$errors->first('password')}}

                    {{Form::password('password',array("class"=>"form-control",
                                                 "id"=>"c_password"))}}
                </div>
                <div class="form-group" id="frm_password_confirmation">
                    <label for="password_confirmation">Confirm Password</label>
                {{$errors->first('password_confirmation')}}

                    {{Form::password('password_confirmation',array("class"=>"form-control",
                                                 "id"=>"password_confirmation"))}}
                </div>

                <div class="form-group" id="frm_firstname">
                    <label for="firstname">First Name</label>
                {{$errors->first('firstname')}}

                    {{Form::text('firstname','',array("class"=>"form-control",
                                                 "id"=>"c_firstname"))}}
                </div>

                <div class="form-group" id="frm_lastname">
                    <label for="lastname">Last Name</label>
                {{$errors->first('lastname')}}

                    {{Form::text('lastname','',array("class"=>"form-control",
                                                 "id"=>"c_lastname"))}}
                </div>
                <div class="form-group" id="frm_lastname">
                    <label for="age">Age</label>
                {{$errors->first('age')}}

                    {{Form::text('age','',array("class"=>"form-control",
                                                 "id"=>"c_age"))}}
                </div>
                <div class="form-group" id="frm_lastname">
                    <label for="contactnum">Contact Number</label>
                {{$errors->first('contactnum')}}

                    {{Form::text('contactnum','',array("class"=>"form-control",
                                                 "id"=>"c_age"))}}
                </div>
                <div class="form-group" id="frm_lastname">
                    <label for="role">Gender</label>
                {{$errors->first('gender')}}

                    <select name="gender" id="c_gender" class="form-control">
                        <option value="MALE">Male</option>
                        <option value="FEMALE">Female</option>
                       

                    </select>
                </div>
                <div class="form-group" id="frm_lastname">
                    <label for="role">Blood Type</label>
                    <select name="bloodtype" id="c_bloodtype" class="form-control">
                        <option value="A">A</option>
                        <option value="AB">AB</option>
                        <option value="B">B</option>
                        <option value="O">O</option>

                    </select>
                </div>

                <div class="form-group" id="frm_role">
                    <label for="role">Select Role</label>
                    <select name="role" id="c_role" class="form-control">
                        <option value="admin">Administrator</option>
                        <option value="power_user">Power User</option>
                        <option value="client">Client</option>
                        <option value="medtech">Medtech</option>

                    </select>
                </div>
                
                <div class="form-group" id="frm_lastname">
                    <label for="lastname">Establishment Identification</label>

                    {{Form::text('establishment_id','',array("class"=>"form-control",
                                                 "id"=>"c_establishment_id"))}}
                </div>

                <div class="form-group">
                    {{Form::submit('Create New User',array("class"=>"btn btn-primary"))}}
                </div>
            </form>
        </div>
    <!-- END CREATE USER PROFILE -->

    <!-- START RECENTLY USERS ADDED -->
        <div class="col-lg-4" id="recent-users">
            <h3>Registered Users</h3>
            <table class="table table-bordered table-hover tablesorter">
                <thead>
                  <tr>
                    <th class="header">Users <i class="fa fa-sort"></i></th>
                    <th class="header"></i>
                  </tr>
                </thead>
                <tbody id="registered_users">
                  
                </tbody>
              </table>
        </div>
    <!-- END RECENTLY USERS ADDED -->
  </div>
  @stop
@include('administrator.footer')

@stop