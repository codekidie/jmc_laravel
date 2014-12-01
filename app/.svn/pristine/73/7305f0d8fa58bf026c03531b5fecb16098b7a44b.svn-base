@extends('administrator.master')
@include('administrator.header')
	@section('page-content')
	<!-- START ROW -->
  {{Form::open(array('url'=>'administrator/page/update'))}}
  <!-- {{Form::open(array('url'=>'sandbox/submit'))}} -->
  {{Form::hidden('page_id',$page->id)}}
	<div class="row">
    <div class="col-lg-12">
            <h1>Edit Page</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class=""><a href="{{url('administrator/page')}}"> <i class="fa fa-book"></i> Page</a></li>
               @if(Auth::user()->role == "admin") 
              <li class=""><a href="{{url('administrator/page/create')}}"><i class="fa fa-book"></i>  Create New Page</a></li>
              @endif
              <li class="active">Edit Page</li>
            </ol>
            
          </div>
    <script>
        tinymce.init({selector:'textarea#details',plugins:['code']});
        </script>
		<div class="col-lg-9">
			{{Session::get('message')}}

      <div class="form-group">
        <label for="">{{$errors->first('title')}}</label>
        {{Form::text('title',$page->title,array('class'=>'form-control',
                                      'placeholder'=>'Enter Title Here'))}}
      </div>
      <div class="form-group">
        <label for="">{{$errors->first('slug')}}</label>
         {{Form::text('slug',Helper::unslug($page->slug),array('class'=>'form-control',
                                      'placeholder'=>'Slug Here'))}}
         <p class="help-block"><em>Slug is to generate friendly url</em></p>
      </div>
      <div class="form-group">
        <label for="">{{$errors->first('details')}}</label>
        {{Form::textarea('details',$page->details,array('class'=>'form-control','id'=>'details'))}}
 
      </div>
      <hr>
      <div class="panel panel-default">
        <div class="panel-heading"><strong>SEO</strong></div>
        <div class="panel-body">
          <div class="form-group">
        <label for="">Title Tag</label>
        <label for="">{{$errors->first('meta_title')}}</label>
        <input type="text" name="meta_title" id="meta_title" class="form-control" value="{{$page->title_tag}}">
      </div>
      <div class="form-group">
        <label for="">Meta Keywords</label>
        <label for="">{{$errors->first('meta_keywords')}}</label>
        {{Form::text('meta_keywords',$page->meta_keywords,array('class'=>'form-control',
                                      'placeholder'=>'Keywords1, Keywords2, Keywords3'))}}
        <p class="help-block">Separate keywords by comma</p>
      </div>
      <div class="form-group">
        <label for="">Meta Description</label>
        <label for="">{{$errors->first('meta_description')}}</label>
        {{Form::textarea('meta_description',$page->meta_description,array('class'=>'form-control','id'=>'meta_description'))}}
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
                @if($page->status == 0)
                  {{Form::submit('Save Draft',array("class"=>"btn btn-success","name"=>"draft"))}}
                {{Form::submit('Publish Page',array("class"=>"btn btn-primary","name"=>'publish'))}}
                @else
                {{Form::submit('Save as Draft',array("class"=>"btn btn-success","name"=>"draft"))}}
                {{Form::submit('Update',array("class"=>"btn btn-primary","name"=>"update"))}}

                @endif                

              </div>
            </div>
            <!-- START TEMPLATE OPTIONS -->
            <div class="panel panel-default">
              <div class="panel-heading"><strong>Page Template</strong></div>
              <div class="panel-body">
                <label for="">Custom Template</label>
              <select name="template" id="template" class="form-control">
                <option value="default" @if($page->template == "default") selected @endif>Default</option>
                <option value="full_width" @if($page->template == "full_width") selected @endif>Full Width</option>
                <option value="right_sidebar" @if($page->template == "right_sidebar") selected @endif>Right Sidebar</option>
                <option value="left_sidebar" @if($page->template=="left_sidebar") selected @endif>Left Sidebar</option>
              </select>
              <hr>
              <label>Insert Contact Form</label>
              <div class="form-group">
                <input type="radio" name="form_active" value="1"
                @if($page->form_active == 1)
                  checked
                @endif
                > Yes
                <input type="radio" name="form_active" value="0"
                @if($page->form_active == 0)
                  checked
                @endif
                > No
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
                  {{Form::textarea('text_widget',$page->widget_text,array('class'=>'form-control'))}}   
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