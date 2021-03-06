@extends('administrator.master')
@include('administrator.header')
	@section('page-content')
	<div class="row">
		<div class="col-lg-12">
			<h3>Add Photos to Slider {{ucwords($slider->name)}}</h3>
				<div class="well well-sm">The best image quality for your slider is from 800x600 to 1024x720 resolution. However you can upload different images resolutions.</div>
			<ol class="breadcrumb">
              <li><a href="index.html"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li><a href="{{url('administrator/slider')}}"><i class="fa fa-film"></i> Sliders</a></li>
              <li class="active"><i class="fa fa-picture-o"></i> Add Photos</li>
            </ol>
		</div>
		<div class="col-lg-5">
			<div class="form-group">
				<form>
				<div id="queue"></div>
		<input id="file_upload" name="image" type="file" multiple="true">
		<input type="hidden" id="slider_id" name="slider_id" value="{{Request::segment(4)}}">
				</form>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-lg-6">
			<h4>Slider Preview</h4>
			{{LeanSlider::show($slider->id)}}
		</div>
		<!-- START GALLERY -->
		<div class="col-lg-6" id="gallery">
			<h4>Photos</h4>
			
		</div>
		<!-- END GALLERY -->
	</div>
	
	@stop
@include('administrator.footer')
@stop