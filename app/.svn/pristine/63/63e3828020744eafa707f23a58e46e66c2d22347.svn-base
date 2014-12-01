@extends('administrator.master')
@include('administrator.header')
	@section('page-content')
	<div class="row">
		<!-- START BREADCRUMB -->
		<div class="col-lg-12">

            <h1>{{ucwords($hotel->hotel_name)}}</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li><a href="{{url('administrator/import')}}"><i class="fa fa-building-o"></i> Agoda Hotels</a></li>
              <li class="active"><i class="fa fa-bookmark"></i> {{ucwords($hotel->hotel_name)}}</li>
            </ol>
            
          </div>
		<!-- END BREADCRUMB -->
		<!-- START HOTEL IMAGES -->
		<div class="col-lg-4">
			<h3>Hotel Photos</h3>
			<div class="col-lg-6">
			    <a href="{{$hotel->photo1}}" data-lightbox="image-1" data-title="{{ucwords($hotel->hotel_name)}}" class="thumbnail">
			      <img src="{{$hotel->photo1}}" alt="...">
			    </a>
			  </div>
			  <div class="col-lg-6">
			    <a href="{{$hotel->photo2}}" data-lightbox="image-1" data-title="{{ucwords($hotel->hotel_name)}}" class="thumbnail">
			  
			      <img src="{{$hotel->photo2}}" alt="...">
			
			    </a>
			  </div>
			  <div class="clearfix"></div>
			  <div class="col-lg-6">
			    <a href="{{$hotel->photo3}}" data-lightbox="image-1" data-title="{{ucwords($hotel->hotel_name)}}" class="thumbnail">
			      <img src="{{$hotel->photo3}}" alt="...">
			    </a>
			  </div>
			  <div class="col-lg-6">
			    <a href="{{$hotel->photo4}}" data-lightbox="image-1" data-title="{{ucwords($hotel->hotel_name)}}" class="thumbnail">
			      <img src="{{$hotel->photo4}}" alt="...">
			    </a>
			  </div>
			  <div class="col-lg-6">
			    <a href="{{$hotel->photo5}}" data-lightbox="image-1" data-title="{{ucwords($hotel->hotel_name)}}" class="thumbnail">
			      <img src="{{$hotel->photo5}}" alt="...">
			    </a>
			  </div>
		</div>
		<!-- START HOTEL IMAGES -->

		<!-- START HOTEL DETAILS -->
		<div class="col-lg-8">
			<h3>More Details about <a href="http://agoda.com{{$hotel->url}}" target="_blank">{{ucwords($hotel->hotel_name)}}</a></h3>
			<br>
			@if($hotel->continent != "")
				<h4>Continent</h4>
				{{$hotel->continent}}
			@endif
			<h4>Address</h4>
			<address>{{$hotel->addressline1}} {{$hotel->zipcode}}, {{$hotel->country}}</address>
			<h4>Number of Rooms</h4>
			{{$hotel->numberrooms}}
			<h4>Hotel Overview</h4>
			<p class="">{{ucfirst($hotel->overview)}}</p>
			<h4>Longitude</h4>
			{{$hotel->longitude}}
			<h4>Latitude</h4>
			{{$hotel->latitude}}
			<h4>Map Location</h4>
			<div id="map-canvas"></div>
		</div>
		<!-- END HOTEL DETAILS -->
	</div>
	@stop
@include('administrator.footer')
@stop