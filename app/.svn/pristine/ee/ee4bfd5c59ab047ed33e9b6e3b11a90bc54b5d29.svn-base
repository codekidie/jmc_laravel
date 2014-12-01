@extends('administrator.master')
@include('administrator.header')
	@section('page-content')
	<!-- START ROW -->
  {{Form::open(array('url'=>'administrator/post/update'))}}
  <!-- {{Form::open(array('url'=>'sandbox/relationship'))}} -->
  {{Form::hidden('post_id',$post->id)}}
	<div class="row">
    <div class="col-lg-12">
            <h1>Edit Post</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class=""><a href="{{url('administrator/posts')}}"> <i class="fa fa-pencil-square"></i> Post</a></li>
              <li class=""><a href="{{url('administrator/post/create')}}"> <i class="fa fa-pencil-square"></i> Create New Post</a></li>
              <li class="active"><i class="fa fa-pencil"></i>  Edit</li>
            </ol>
          </div>
    <script>
        tinymce.init({selector:'textarea#details',plugins:['code']});
        </script>
		<div class="col-lg-9">
			{{Session::get('message')}}
      <div class="form-group">
        <label for="">{{$errors->first('title')}}</label>
        {{Form::text('title',$post->title,array('class'=>'form-control',
                                      'placeholder'=>'Enter Title Here','id'=>'post_title'))}}
      </div>
      <div class="form-group">
        <label for="">{{$errors->first('slug')}}</label>
         {{Form::text('slug',$post->slug,array('class'=>'form-control',
                                      'placeholder'=>'Slug Here'))}}
         <p class="help-block"><em>Slug is to generate friendly url</em></p>
      </div>
      <div class="form-group">
        <label for="">{{$errors->first('content')}}</label>
        {{Form::textarea('content',$post->content,array('class'=>'form-control','id'=>'details'))}}
 
      </div>
      <hr>
      <div class="panel panel-default">
        <div class="panel-heading"><strong>SEO</strong></div>
        <div class="panel-body">
          <div class="form-group">
        <label for="">Title Tag</label>
        <a href="" id="seo-title-link">[Same As Post Title]</a>
        <label for="">{{$errors->first('meta_title')}}</label>
        <input type="text" name="meta_title" id="meta_title" class="form-control" value="{{$post->seo_title}}">
      </div>
      <div class="form-group">
        <label for="">Meta Keywords</label>
        <label for="">{{$errors->first('meta_keywords')}}</label>
        {{Form::text('meta_keywords',$post->meta_keywords,array('class'=>'form-control',
                                      'placeholder'=>'Keywords1, Keywords2, Keywords3'))}}
        <p class="help-block">Separate keywords by comma</p>
      </div>
      <div class="form-group">
        <label for="">Meta Description</label>
        <label for="">{{$errors->first('meta_description')}}</label>
        {{Form::textarea('meta_description',$post->meta_description,array('class'=>'form-control','id'=>'meta_description'))}}
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
                  @if($post->status == 0)
                  {{Form::submit('Save Draft',array("class"=>"btn btn-success","name"=>"draft"))}}
                  {{Form::submit('Publish Page',array("class"=>"btn btn-primary","name"=>'publish'))}}
                  @else
                  {{Form::submit('Save as Draft',array("class"=>"btn btn-success","name"=>"draft"))}}
                  {{Form::submit('Update',array("class"=>"btn btn-primary","name"=>"update"))}}

                @endif
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
                <option value="default" @if($post->template == "default") selected @endif>Default</option>
                <option value="full_width" @if($post->template == "full_width") selected @endif>Full Width</option>
                <option value="right_sidebar" @if($post->template == "right_sidebar") selected @endif>Right Sidebar</option>
                <option value="left_sidebar" @if($post->template=="left_sidebar") selected @endif>Left Sidebar</option>
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
                  {{Form::textarea('text_widget',$post->widget_text,array('class'=>'form-control'))}}   
                </div>
                           
              </div>
            </div>
            <!-- END SIDEBAR OPTIONS -->

            <!-- START CATEGORY SELECT -->
            <div class="panel panel-default">
              <div class="panel-heading"><strong>Category</strong></div>
              <div class="panel-body">
                <div class="form-group">
                  @foreach($post_categories as $post_category)
                  <div class="checkbox">
                    <input class="cat_selected" name="category[]" checked type="checkbox" value="{{$post_category->id}}"> {{ucwords($post_category->name)}}
                  </div>
                  @endforeach
                  @foreach($categories as $category)
                  <div class="checkbox">
                    <input class="category" name="category[]" type="checkbox" value="{{$category->id}}"> {{ucwords($category->name)}}
                  </div>
                  @endforeach
                </div>
                <a href="{{url('administrator/category')}}" target="_blank">Create New Category</a>
                <hr>
              </div>
            </div>
            <!-- END CATEGORY SELECT -->

            <!-- START FEATURED IMAGE -->
            <div class="panel panel-default">
              <div class="panel-heading"><strong>Featured Image</strong></div>
                <div class="panel-body">
                  <div id="featured-img">
                    @if($post->image_id !="")
                      {{Photo::getImageSource($post->image_id)}}
                      <input type="hidden" name="image_id" value="{{$post->image_id}}">
                    @endif
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