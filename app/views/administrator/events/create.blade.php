@extends('administrator.master')
@include('administrator.header')
@section('page-content')
	<!-- START ROW -->
  {{Form::open(array('url'=>'events/save'))}}
  <!-- {{Form::open(array('url'=>'sandbox/submit'))}} -->
	<div class="row">
    <div class="col-lg-12">
            <h1>Create Events</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class=""><i class="fa fa-home"></i><a href="{{url('events/create')}}"> Events </a></li>
              <li class="active"><i class="fa fa-plus"></i> Create New Events</li>
            </ol>
          </div>

    <script>
        tinymce.init({selector:'textarea#details',plugins:['code']});
        </script>
		<div class="col-lg-9">
			{{Session::get('message')}}
      <div class="form-group">
        
        <label for="">Event Title</label>
        {{$errors->first('title')}}

        {{Form::text('title','',array('class'=>'form-control',
                                      'placeholder'=>'Enter Title Here'))}}
      </div>

      <div class="form-group">
        
        <label for="">Event Location</label>
        {{$errors->first('location')}}

        {{Form::text('location','',array('class'=>'form-control',
                                      'placeholder'=>'Enter Location Here'))}}
      </div>

      <div class="form-group">
        
    
        <label for="">Event Start</label>
        {{$errors->first('event_start')}}

        {{Form::input('date','event_start','',array('class'=>'form-control'))}}
        

        <label for="">Event End</label>
        {{$errors->first('event_end')}}

        {{Form::input('date','event_end','',array('class'=>'form-control'))}}
    
      </div>
      <div class="form-group">
        <label for="">Event Details</label>
        <label for="">{{$errors->first('event_details')}}</label>

        {{Form::textarea('event_details','',array('class'=>'form-control','id'=>'details'))}}
 
      </div>
   
      <hr>
	</div>


    <!-- START COLUMN 2 -->
    <div class="col-lg-3">
      <div class="panel panel-default">
              <div class="panel-heading"><strong>Publish</strong></div>
              <div class="panel-body">
                {{Form::reset('Reset Inputs',array("class"=>"btn btn-warning btn-sm"))}}
                {{Form::submit('Publish Event',array("class"=>"btn btn-primary btn-sm","name"=>"publish"))}}
              </div>
            </div>

          

             
    </div>
    <!-- END COLUMN 2 -->
  </div>
	<!-- END ROW -->
  {{Form::close()}}
@stop
@include('administrator.footer')
@stop