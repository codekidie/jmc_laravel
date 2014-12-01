@extends('administrator.master')
@include('administrator.header')
	@section('page-content')
	<!-- START ROW -->
  {{Form::open(array('url'=>'administrator/post/save'))}}
	<div class="row">
    <div class="col-lg-12">
            <h1>Create New Post</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class=""><a href="{{url('administrator/posts')}}"> <i class="fa fa-pencil-square"></i> Post</a></li>
              <li class="active"><i class="fa fa-book"></i>  New Post</li>
            </ol>
    </div>
    <script>
        tinymce.init({selector:'textarea#details',plugins:['code']});
    </script>
		<div class="col-lg-9">
			{{Session::get('message')}}
      <div class="form-group">
        <h3>Add New Post</h3>
        {{$errors->first('title')}}
        {{Form::text('title','',array('class'=>'form-control',
                                      'placeholder'=>'Enter Title Here','id'=>'post_title'))}}
      </div>
      <div class="form-group">
        {{$errors->first('slug')}}
         {{Form::text('slug','',array('class'=>'form-control',
                                      'placeholder'=>'Slug Here'))}}
         <p class="help-block"><em>Slug is to generate friendly url</em></p>
      </div>
      <div class="form-group">
        {{$errors->first('content')}}
        {{Form::textarea('content','',array('class'=>'form-control','id'=>'details'))}}
 
      </div>
      <hr>
      <div class="panel panel-default">
        <div class="panel-heading"><strong>SEO</strong></div>
        <div class="panel-body">
          <div class="form-group">
        <label for="">Title Tag</label>
         <a href="" id="seo-title-link">[Same As Post Title]</a>
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
                <div class="form-group">
                  {{Form::submit('Save Draft',array("class"=>"btn btn-success","name"=>"draft"))}}
                {{Form::submit('Publish Post',array("class"=>"btn btn-primary","name"=>"publish"))}}
                </div>
                <div class="form-group">
                  <a href="" id="published-btn">Select Published Date</a>
                  <div id="date-picker">
                    <label for="">Select Date</label>
                  <div class="input-group date">
                  <input type="text" name="date-select" class="form-control" id="date-post"><span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                </div>
                  </div>
                </div>
                

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

            <!-- START CATEGORY SELECT -->
            <div class="panel panel-default">
              <div class="panel-heading"><strong>Category</strong></div>
              <div class="panel-body">
                <div class="form-group">
                  @foreach($categories as $category)
                  <div class="checkbox">
                    <input name="category[]" type="checkbox" value="{{$category->name}}"> {{ucwords($category->name)}}
                  </div>
                  @endforeach
                </div>
                <a href="{{url('administrator/category')}}" target="_blank">Create New Category</a>
              </div>
            </div>
            <!-- END CATEGORY SELECT -->

            <!-- START FEATURED IMAGE -->
            <div class="panel panel-default">
              <div class="panel-heading"><strong>Featured Image</strong></div>
                <div class="panel-body">
                  <div id="featured-img">
                  </div>
                  <a href="" data-toggle="modal" data-target="#photoSelect">Attach New Image</a>

                </div>
            </div>
            <!-- END FEATURED IMAGE -->

            <!-- START MODAL GALLERY -->
            <div class="modal fade" id="photoSelect" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Select Photo to attach</h4>
                  </div>
                  <div class="modal-body">
                   @foreach($images as $image)
                   <div class="col-lg-3">
                    <a href="" data-role="attach" class="thumbnail" id="{{$image->id}}">
                    <img src="{{asset('_uploads/'.$image->filename)}}" alt="{{$image->filename}}">
                    </a>
                  </div>
                   @endforeach
                   <div class="clearfix"></div>
                  </div>
                  <div class="modal-footer">
                    <button id="close" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- END MODAL GALLERY -->

             
    </div>
    <!-- END COLUMN 2 -->
  </div>
	<!-- END ROW -->
  {{Form::close()}}
  
	@stop
@include('administrator.footer')
@stop