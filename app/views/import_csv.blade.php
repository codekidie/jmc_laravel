<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Import File CSV</title>
</head>
<body>
	{{$errors->first('xls')}}
	{{Form::open(array("url"=>"/administrator/import/process","files"=>TRUE))}}
	{{Form::file('xls')}}
	{{Form::submit('Import')}}
	{{Form::close()}}
</body>
</html>