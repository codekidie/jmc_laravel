@extends('administrator.master')
@include('administrator.header')
  @section('page-content')
  <div class="row">
    <div class="col-lg-12">
            <h1>Edit Profile</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class="active">
                <a href="{{url('profile')}}">
                <i class="fa fa-user"></i> Profile</a>
            </li>
              <li class="active"><i class="fa fa-edit"></i> Edit profile</li>
            </ol>
     </div>
  	<!-- START USER PROFILE FORM -->
        <div class="col-lg-4">
        	{{Session::get('message')}}
        	<h3>User's Profile</h3>
        	{{Form::open(array('url'=>'profile/update'))}}
            {{Form::hidden('user_id',$user->id)}}
        		<div class="form-group">
        			<label for="">Username</label>
        			{{$errors->first('username')}}
        			{{Form::text('username',$user->username,array("class"=>"form-control"))}}
        		</div>
        		<div class="form-group">
        			<label for="">Email</label>
        			{{$errors->first('email')}}
        			{{Form::text('email',$user->email,array("class"=>"form-control"))}}
        		</div>
        		<div class="form-group">
        			<label for="">First Name</label>
        			{{$errors->first('firstname')}}
        			{{Form::text('firstname',$user->firstname,array("class"=>"form-control"))}}
        		</div>
        		<div class="form-group">
        			<label for="">Last Name</label>
        			{{$errors->first('lastname')}}
        			{{Form::text('lastname',$user->lastname,array("class"=>"form-control"))}}
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
                    <label for="">Select Role</label>
                    <select name="role" id="role" class="form-control">
                        <option value="admin" @if($user->role == "admin")selected @endif>Administrator</option>
                        <option value="poweruser" @if($user->role == "poweruser")selected @endif>Power User</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="">User Activation</label><br>
                    <input @if($user->status == 1) checked @endif type="radio" name="status" value="1"> Activate Account
                    <input @if($user->status == 0) checked @endif type="radio" name="status" value="0"> Deactivate Account
                </div>

        		<div class="form-group">
        			{{Form::submit('Update Profile',array("class"=>"btn btn-primary"))}}
        		</div>
        	{{Form::close()}}
        </div>
  	<!-- END USER PROFILE FORM -->

  @stop
@include('administrator.footer')

@stop