@extends('administrator.master')
@include('administrator.header')
@section('page-content')
	<!-- START ROW -->
  {{Form::open(array('url'=>'administrator/establishment/save'))}}
  <!-- {{Form::open(array('url'=>'sandbox/submit'))}} -->
	<div class="row">
    <div class="col-lg-12">
            <h1>Edit Establishment</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class=""><i class="fa fa-book"></i><a href="{{url('administrator/page')}}"> Establishment</a></li>
              <li class="active"><i class="fa fa-book"></i> Edit Establishment</li>
            </ol>
            
          </div>
    <script>
        tinymce.init({selector:'textarea#details',plugins:['code']});
        </script>
		<div class="col-lg-9">
			{{Session::get('message')}}
      <div class="form-group">
        
        {{$errors->first('name')}}
        {{Form::text('name',$establishment->name,array('class'=>'form-control',
                                      'placeholder'=>'Enter Name Here'))}}
      </div>
      <div class="form-group">
        {{$errors->first('tagline')}}
         {{Form::text('tagline',$establishment->tagline,array('class'=>'form-control',
                                      'placeholder'=>'tagline Here'))}}
         
      </div>
      <div class="form-group">
        {{$errors->first('license_number')}}
        {{Form::text('license_number',$establishment->license_number,array('class'=>'form-control','id'=>'details',"placeholder"=>"License number"))}}
 
      </div>
      <div class="form-group">
        {{$errors->first('email')}}
        {{Form::text('email',$establishment->email,array('class'=>'form-control','id'=>'details',"placeholder"=>"Email"))}}
 
      </div>
      <div class="form-group">
        {{$errors->first('location')}}
        {{Form::text('location',$establishment->location,array('class'=>'form-control','id'=>'details',"placeholder"=>"location"))}}
 
      </div>
      <div class="form-group">
        {{$errors->first('contact_number')}}
        {{Form::text('contact_number',$establishment->contact_number,array('class'=>'form-control','id'=>'details',"placeholder"=>"Contact Number"))}}
 
      </div>
      <div class="form-group">
        {{$errors->first('website')}}
        {{Form::text('website',$establishment->website,array('class'=>'form-control','id'=>'details',"placeholder"=>"Website"))}}
 
      </div>
      <hr>
            
			
	  </div>
    <!-- START COLUMN 2 -->
    <div class="col-lg-3">
      <div class="panel panel-default">
              <div class="panel-heading"><strong>Publish</strong></div>
              <div class="panel-body">
                {{Form::submit('Save Draft',array("class"=>"btn btn-success","name"=>"draft"))}}
                {{Form::submit('Publish Page',array("class"=>"btn btn-primary","name"=>"publish"))}}

              </div>
            </div>

            <!-- START TEMPLATE OPTIONS -->
            <div class="panel panel-default">
              <div class="panel-heading"><strong>Page Template</strong></div>
              <div class="panel-body">
                <label for="">Custom Template</label>
              <select name="template" id="template" class="form-control">
                <option value="default">Default</option>
                <option value="full_width">Full Width</option>
                <option value="right_sidebar">Right Sidebar</option>
                <option value="left_sidebar">Left Sidebar</option>
              </select>
              <hr>
              <label>Insert Form</label>
              <div class="form-group">
                <input type="radio" name="form_active" value="1"> Yes
                <input type="radio" name="form_active" value="0" checked> No
              </div>
              </div>
            </div>
            <!-- END TEMPLATE OPTIONS -->

            <!-- START SIDEBAR OPTIONS -->
            <div class="panel panel-default" id="sidebar-widget">
              <div class="panel-heading"><strong>Sidebar Widgets</strong></div>
              <div class="panel-body">
                <div class="form-group">
                  <label for="">Text Widget</label>
                  <p class="help-block">You can put codes for ads here or any html codes</p>  
                  {{Form::textarea('text_widget','',array('class'=>'form-control'))}}   
                </div>
                           
              </div>
            </div>
            <!-- END SIDEBAR OPTIONS -->

             
    </div>
    <!-- END COLUMN 2 -->
  </div>
	<!-- END ROW -->
  {{Form::close()}}
@stop
@include('administrator.footer')
@stop