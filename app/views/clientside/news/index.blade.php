@extends('clientside.master')
@include('clientside.header')
@include('clientside.footer')
  @section('page-content')
  	 <!-- ******CONTENT****** --> 
        <div class="content container">
            <div class="page-wrapper">
                <header class="page-heading clearfix">
                    <h1 class="heading-title pull-left">News</h1>
                    <div class="breadcrumbs pull-right">
                        <ul class="breadcrumbs-list">
                            <li class="breadcrumbs-label">You are here:</li>
                            <li><a href="index.html">Home</a><i class="fa fa-angle-right"></i></li>
                            <li class="current">News</li>
                        </ul>
                    </div><!--//breadcrumbs-->
                </header> 
                <div class="page-content">
                    <div class="row page-row">
                        <div class="news-wrapper col-md-8 col-sm-7">                         
                        @foreach($news as $n)
                            <article class="news-item page-row has-divider clearfix row">       
                                <figure class="thumb col-md-2 col-sm-3 col-xs-4">
                                     {{ HTML::image('_uploads/'.$n->image_path, 'a picture',array('class'=>'img-responsive'))}}
                                </figure>
                                <div class="details col-md-10 col-sm-9 col-xs-8">
                                    <h3 class="title"><a href="news-single.html">{{$n->title}}</a></h3>
                                    <p>
                                     {{str_limit($n->content,150,'...')}}</p>
                                    <p><small>Published By: {{$n->publishedby}}</small></p>
                                    <a class="btn btn-theme read-more" href="{{url('news/view/'.$n->id)}}">Read more<i class="fa fa-chevron-right"></i></a>
                                </div>
                            </article><!--//news-item-->
                         @endforeach   
                           
                         
                            
                        </div><!--//news-wrapper-->
                        <aside class="page-sidebar  col-md-3 col-md-offset-1 col-sm-4 col-sm-offset-1">                    
                            <section class="widget has-divider">
                                <h3 class="title">Arcu Aliquet Quam Vel</h3>
                                <p>Maecenas nisl urna, condimentum ac justo a, adipiscing hendrerit magna. Fusce pharetra laoreet accumsan. Phasellus elit sapien, consequat vel sapien sit amet, condimentum vulputate odio. Aliquam fringilla justo quis est placerat, eu imperdiet lorem cursus. Curabitur pretium nulla lorem, sed egestas ante vestibulum dignissim.</p>
                            </section><!--//widget-->
                            <section class="widget has-divider">
                                <h3 class="title">Upcoming Events</h3>
                                <article class="events-item row page-row">                                    
                                        <div class="date-label-wrapper col-md-3 col-sm-4 col-xs-4">
                                            <p class="date-label">
                                                <span class="month">FEB</span>
                                                <span class="date-number">18</span>
                                            </p>
                                        </div><!--//date-label-wrapper-->
                                        <div class="details col-md-9 col-sm-8 col-xs-8">
                                            <h5 class="title">Open Day</h5>  
                                            <p class="time text-muted">10:00am - 18:00pm<br />East Campus</p>                  
                                        </div><!--//details-->                                    
                                </article>
                                <article class="events-item row page-row">
                                    <div class="date-label-wrapper col-md-3 col-sm-4 col-xs-4">
                                        <p class="date-label">
                                            <span class="month">SEP</span>
                                            <span class="date-number">06</span>
                                        </p>
                                    </div><!--//date-label-wrapper-->
                                    <div class="details col-md-9 col-sm-8 col-xs-8">
                                        <h5 class="title">E-learning at College Green</h5>   
                                        <p class="time text-muted">10:00am - 16:00pm<br />Learning Center</p>                
                                    </div><!--//details-->
                                </article>
                                <article class="events-item row page-row">
                                    <div class="date-label-wrapper col-md-3 col-sm-4 col-xs-4">
                                        <p class="date-label">
                                            <span class="month">JUN</span>
                                            <span class="date-number">23</span>
                                        </p>
                                    </div><!--//date-label-wrapper-->
                                    <div class="details col-md-9 col-sm-8 col-xs-8">
                                        <h5 class="title">Career Fair</h5>   
                                        <p class="time text-muted">09:45am - 16:00pm<br />Library</p>                
                                    </div><!--//details-->
                                </article>
                            </section><!--//widget-->
                            <section class="widget">
                                <h3 class="title">Flickr Photo Stream</h3>
                                <ul id="flickr-photos"></ul><!--//flickr-photos-->
                            </section><!--//widget--> 
                        </aside>
                    </div><!--//page-row-->
                </div><!--//page-content-->
            </div><!--//page--> 
        </div><!--//content-->
    </div><!--//wrapper-->

  @stop
@stop  