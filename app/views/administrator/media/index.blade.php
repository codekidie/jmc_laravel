@extends('administrator.master')
@include('administrator.header')
	@section('page-content')
	<div class="row">
		<div class="col-lg-12">
      {{Session::get('message')}}
			<h3>Add Media Files</h3>
				<div class="well well-sm">The best image quality for your slider is from 800x600 to 1024x720 resolution. However you can upload different images resolutions.</div>
			<ol class="breadcrumb">
              <li><a href="index.html"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class="active"><i class="fa fa-picture-o"></i> Add Photos</li>
            </ol>
		</div>
		<div class="col-lg-5">
			<div class="form-group">
				<form>
				<div id="queue"></div>
		<input id="file_upload" name="image" type="file" multiple="true">
				</form>
			</div>
		</div>
	</div>
	
	<div class="row">
		<!-- START GALLERY -->
		<div class="col-lg-12" id="media-gallery">
			<div class="panel panel-default">
              <div class="panel-heading">Photo Gallery</div>
              <div class="panel-body">
              	<div class="table-responsive">
              <table class="table table-bordered table-hover tablesorter">
                <thead>
                  <tr>
                  	<th class="header"></th>
                    <th class="header"></th>
                    <th class="header">File Source</th>
                    <th class="header">Attach</th>
                  </tr>
                </thead>
                <tbody id="gallery-th">
                {{Form::open(array('url'=>'administrator/media/delete_all'))}}
                @foreach($images as $image)
                  <tr>
                  	<td width="10"><input type="checkbox" name="image[]" value="{{$image->id}}"></td>
                    <td width="180"><a href="{{url('administrator/media/attachment/'.$image->id)}}" class="thumbnail" target="_blank">
			      <img src="{{asset($image->filename)}}" alt="{{$image->filename}}">
			    </a></td>
                    <td>
                    	{{Setting::getOptions()->url}}{{$image->filename}} 
                    	<div class="th-action"><br><p><a href="{{url('administrator/media/delete/'.$image->id)}}"><i class="fa fa-trash-o"></i> Delete</a></p></div>
                    </td>
                    <td><a href="" class="image_click" data-image-id="{{$image->id}}"  data-toggle="modal" data-target="#attachModal"><i class="fa fa-flag-o"></i> Attach</a></td>
                  </tr>
                 @endforeach
                </tbody>
                
              </table>
            </div>
            {{Form::submit('Delete Selected')}}
            {{Form::close()}}
              </div>
            </div>
		</div>
		<!-- END GALLERY -->
	</div>

  <!-- START MODAL -->
  <div class="modal fade" id="attachModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Attach Image to Post</h4>
      </div>
      <div class="modal-body">
       <form id="search-post">
         <div class="form-group input-group">
                <input type="text" id="keyword" class="form-control">
                <span class="input-group-btn">
                  <button id="search-btn" class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                </span>
          </div>
       </form>
       <!-- START TABLE -->
        <div class="table-responsive">
              <table class="table table-hover table-striped tablesorter">
                <thead>
                  <tr>
                    <th class="header"></th>
                    <th class="header"></th>
                  </tr>
                </thead>
                <tbody id="posts-query"></tbody>
                <input type="hidden" id="post_attach_id" value="">
              </table>
            </div>
       <!-- END TABLE -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" id="btn-close">Close</button>
        <button type="button" class="btn btn-primary" id="btn-save">Attach Image</button>
      </div>
    </div>
  </div>
</div>
  <!-- END MODAL -->
	
	@stop
@include('administrator.footer')
@stop