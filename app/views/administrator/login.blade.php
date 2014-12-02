<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="{{asset('_assets/backend/css/bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{asset('_assets/backend/css/sb-admin.min.css')}}">
	<link rel="stylesheet" href="{{asset('_assets/backend/css/sb-admin.css')}}">
	<link rel="stylesheet" href="{{asset('_assets/backend/css/login.css')}}">
	<link rel="stylesheet" href="{{asset('_assets/backend/js/themes/base/jquery.ui.all.css')}}">
	<script src="{{asset('_assets/backend/js/jquery.js')}}"></script>
	<script src="{{asset('_assets/backend/js/login.js')}}"></script>
	<script src="{{asset('_assets/backend/js/jquery-ui.min.js')}}"></script>
</head>
<body>
	<div id="loginfrm">
		<center><p class="frmTitle"><strong>JMC Admin Panel</strong></p></center>
		<div class="divider"></div>
		<div id="content"></div>
		{{Form::open(array("url"=>"login/authenticate","id"=>"frm"))}}
		<div class="form-group">
			<label id="username-label">Username</label>		
			{{$errors->first('username')}}
			<input type="text" name="username" id="username" class="form-control">
		</div>
		<div class="form-group">
			<label id="password-label">Password</label>
			{{$errors->first('password')}}
			{{Form::password('password',array("class"=>"form-control","id"=>"password"))}}
			<input type="hidden"  name="role" value="admin">
		</div>
		
		<div class="form-group">
			{{Form::submit('Login',array("class"=>'btn btn-danger'))}}
		</div>
		</form>
	</div>
</body>
</html>