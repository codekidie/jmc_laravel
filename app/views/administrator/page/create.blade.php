@extends('administrator.master')
@include('administrator.header')
	@section('page-content')
	<!-- START ROW -->
  {{Form::open(array('url'=>'administrator/page/save'))}}
  <!-- {{Form::open(array('url'=>'sandbox/submit'))}} -->
	<div class="row">
    <div class="col-lg-12">
            <h1>Create New Page</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class=""><i class="fa fa-book"></i><a href="{{url('administrator/page')}}"> Page</a></li>
              <li class="active"><i class="fa fa-book"></i> Create New Page</li>
            </ol>
            
          </div>
    <script>
        tinymce.init({selector:'textarea#details',plugins:['code']});
        </script>
		<div class="col-lg-9">
			{{Session::get('message')}}
      <div class="form-group">
        <h3>Add New Page</h3>
        {{$errors->first('title')}}
        {{Form::text('title','',array('class'=>'form-control',
                                      'placeholder'=>'Enter Title Here'))}}
      </div>
      <div class="form-group">
        {{$errors->first('slug')}}
         {{Form::text('slug','',array('class'=>'form-control',
                                      'placeholder'=>'Slug Here'))}}
         <p class="help-block"><em>Slug is to generate friendly url</em></p>
      </div>
      <div class="form-group">
        {{$errors->first('details')}}
        {{Form::textarea('details','',array('class'=>'form-control','id'=>'details'))}}
 
      </div>
      <hr>
      <div class="panel panel-default">
        <div class="panel-heading"><strong>SEO</strong></div>
        <div class="panel-body">
          <div class="form-group">
        <label for="">Title Tag</label>
        {{$errors->first('meta_title')}}
        {{Form::text('meta_title','',array('class'=>'form-control','placeholder'=>'Title Tag Here'));}}
      </div>
      <div class="form-group">
        <label for="">Meta Keywords</label>
        {{$errors->first('meta_keywords')}}
        {{Form::text('meta_keywords','',array('class'=>'form-control',
                                      'placeholder'=>'Keywords1,Keywords2,Keywords3'))}}
        <p class="help-block">Separate keywords by comma</p>
      </div>
      <div class="form-group">
        <label for="">Meta Description</label>
        {{$errors->first('meta_description')}}
        {{Form::textarea('meta_description','',array('class'=>'form-control','id'=>'meta_description','placeholder'=>'Put Meta Description Here'))}}
        <p class="help-block">At least 100 words</p>

      </div>
        </div>
      </div>
      
			
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