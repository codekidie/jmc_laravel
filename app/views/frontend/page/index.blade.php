@extends('frontend.templates.master')
@include('frontend.partials.modal_login')
@section('content')
<!-- START PAGE HEADER -->
<section id="page-header">
		<div class="container">
		  <div class="row">
			<div class="span12 aligncenter">
				<h3>{{$page_title}}</h3>
				<p>
				{{str_limit($page->details,150,'...')}}
				
				</p>
			</div>
		  </div>
		</div>
</section>
<!-- END PAGE HEADER -->
<!-- START CONTAINER -->
<section id="contain">
		<div class="container">
		  <div class="row">
			<div class="span12">
				<div class="boxed-wrapper">
					<div class="article-wrapper">
						<article>
							<div class="post-headline">
								<h4><a href="#"></a></h4>
							</div>						
							<div class="median-object">
								<img src="{{asset('_assets/frontend/img/blog/img1.jpg')}}" style="width:100%;" alt="">
							</div>
							<div class="post-contain">
								{{$page->details}}						
							</div>
						</article>	
						<div class="clearfix"></div>
						
					</div>
					
				</div>
			</div>	
		  </div>
		</div>
	</section>
<!-- END CONTAINER -->
@stop
