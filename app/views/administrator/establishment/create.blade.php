@extends('administrator.master')
@include('administrator.header')
@section('page-content')
	<!-- START ROW -->
  
  {{Form::open(array('url'=>'administrator/establishment/save','files'=>true))}}
  <!-- {{Form::open(array('url'=>'sandbox/submit'))}} -->
	<div class="row">
    <div class="col-lg-12">
            <h1>Create Establishment</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class=""><i class="fa fa-home"></i><a href="{{url('administrator/establishments')}}"> Establishment </a></li>
              <li class="active"><i class="fa fa-plus"></i> Create New Establishment</li>
            </ol>
            
          </div>
    <script>
        tinymce.init({selector:'textarea#details',plugins:['code']});
        </script>
		<div class="col-lg-8">
			@if (Session::get('globals')) 
       <div class="alert alert-warning"> {{Session::get('globals')}}</div>
       @endif
      
      <div class="form-group">
        
        {{$errors->first('logo')}}
        <label for="logo">Upload Establishment Logo</label>
        {{Form::file('logo','',array('class'=>'form-control'))}}
      </div>

      <div class="form-group">
        
        {{$errors->first('name')}}
        <label for="logo">Establishment Name</label>
        {{Form::text('name','',array('class'=>'form-control',
                                      'placeholder'=>'Enter Establishment Name Here'))}}
      </div>
      <div class="form-group">
        {{$errors->first('tagline')}}
        <label for="logo">Establishment Tagline</label>

         {{Form::text('tagline','',array('class'=>'form-control',
                                      'placeholder'=>'tagline Here'))}}
         
      </div>
      <div class="form-group">
        {{$errors->first('license_number')}}
        <label for="logo">Establishment License Number</label>

        {{Form::text('license_number','',array('class'=>'form-control','id'=>'details',"placeholder"=>"License number"))}}
 
      </div>
      <div class="form-group">
        {{$errors->first('email')}}
        <label for="logo">Establishment Email Address</label>

        {{Form::email('email','',array('class'=>'form-control','id'=>'details',"placeholder"=>"email"))}}
 
      </div>
      <div class="form-group">
        {{$errors->first('location')}}
        <label for="logo">Establishment Location</label>
        {{Form::text('location','',array('class'=>'form-control','id'=>'details',"placeholder"=>"location"))}}
 
      </div>

      <div class="form-group">
        {{$errors->first('contact_number')}}
        <label for="logo">Establishment Contact Number</label>
        {{Form::text('contact_number','',array('class'=>'form-control','id'=>'details',"placeholder"=>"contact number"))}}
 
      </div>

      <div class="form-group">
        {{$errors->first('website')}}
        <label for="logo">Establishment Website</label>

        {{Form::text('website','',array('class'=>'form-control','id'=>'details',"placeholder"=>"website"))}}
 
      </div>
      <hr>
            
			
	  </div>
    <!-- START COLUMN 4 -->
    <div class="col-lg-4">
      <div class="panel panel-default">
              <div class="panel-heading"><strong>Publish</strong></div>
              <div class="panel-body">
                {{Form::reset('Reset Inputs',array("class"=>"btn btn-danger","name"=>"reset"))}}
                {{Form::submit('Publish Establishment',array("class"=>"btn btn-primary","name"=>"publish"))}}
                <hr>
                <a href="{{url('administrator/establishments')}}" class="btn btn-success">
                    View Created Establishments
                </a>

              </div>
            </div>          
    </div>
    <!-- END COLUMN 4 -->

  </div>
	<!-- END ROW -->
  {{Form::close()}}
@stop
@include('administrator.footer')
@stop