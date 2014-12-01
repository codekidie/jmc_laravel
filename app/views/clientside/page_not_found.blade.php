@extends('clientside.master')
@include('clientside.header')
@include('clientside.footer')
 @section('page-content')
<!-- Start page header -->
	<section id="page-header">
		<div class="container">
		  <div class="row">
			<div class="span12 aligncenter">
			<center>
			{{HTML::image('_assets/backend/images/not_found.jpg')}}
				<h3>Error 404</h3>
				<p>
				Oops, this page can't be found, 
				We are sorry but the page you are looking for does not exist. You could return to the <a href="{{url('/')}}">homepage</a>
				</p>
			</center>	
			</div>
		  </div>
		</div>
	</section>
	<!-- End page header  -->
 @stop
@stop
