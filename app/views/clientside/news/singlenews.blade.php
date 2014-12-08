@extends('clientside.master')
@include('clientside.header')
@include('clientside.footer')
  @section('page-content')
  	  <!-- ******CONTENT****** --> 
        <div class="content container">
            <div class="page-wrapper">
                <header class="page-heading clearfix">
                    <h1 class="heading-title pull-left">{{$news->title}}</h1>
                    <div class="breadcrumbs pull-right">
                        <ul class="breadcrumbs-list">
                            <li class="breadcrumbs-label">You are here:</li>
                            <li><a href="index.html">Home</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="index.html">News</a><i class="fa fa-angle-right"></i></li>
                            <li class="current">Morbi bibendum consectetuer vulputate sollicitudin</li>
                        </ul>
                    </div><!--//breadcrumbs-->
                </header> 
                <div class="page-content">
                    <div class="row page-row">
                        <div class="news-wrapper col-md-8 col-sm-7"> 
                                
                            <article class="news-item">
                                <p class="meta text-muted">By: <a href="#">{{$news->publishedby}}</a> | Posted on: 26 Jan 2014</p>
                                <p class="featured-image">
                                     {{ HTML::image('_uploads/'.$news->image_path, 'a picture',array('class'=>'img-responsive'))}}
                                {{$news->content}}
                            </article><!--//news-item-->

                        </div><!--//news-wrapper-->
                        <aside class="page-sidebar  col-md-3 col-md-offset-1 col-sm-4 col-sm-offset-1 col-xs-12">                    
                            <section class="widget has-divider">
                                <h3 class="title">Other News</h3>
                                <article class="news-item row">       
                                    <figure class="thumb col-md-2 col-sm-3 col-xs-3">
                                        <img src="assets/images/news/news-thumb-1.jpg" alt="" />
                                    </figure>
                                    <div class="details col-md-10 col-sm-9 col-xs-9">
                                        <h4 class="title"><a href="news-single.html">Morbi bibendum consectetuer vulputate sollicitudin</a></h4>
                                    </div>
                                </article><!--//news-item-->
                                <article class="news-item row">       
                                    <figure class="thumb col-md-2 col-sm-3 col-xs-3">
                                        <img src="assets/images/news/news-thumb-2.jpg" alt="" />
                                    </figure>
                                    <div class="details col-md-10 col-sm-9 col-xs-9">
                                        <h4 class="title"><a href="news-single.html">Sed tincidunt urna eget turpis pretium hendrerit</a></h4>
                                    </div>
                                </article><!--//news-item-->
                                <article class="news-item row">       
                                    <figure class="thumb col-md-2 col-sm-3 col-xs-3">
                                        <img src="assets/images/news/news-thumb-3.jpg" alt="" />
                                    </figure>
                                    <div class="details col-md-10 col-sm-9 col-xs-9">
                                        <h4 class="title"><a href="news-single.html">Duis scelerisque erat iaculis</a></h4>
                                    </div>
                                </article><!--//news-item-->
                                <article class="news-item row">       
                                    <figure class="thumb col-md-2 col-sm-3 col-xs-3">
                                        <img src="assets/images/news/news-thumb-4.jpg" alt="" />
                                    </figure>
                                    <div class="details col-md-10 col-sm-9 col-xs-9">
                                        <h4 class="title"><a href="news-single.html">Duis scelerisque erat iaculis</a></h4>
                                    </div>
                                </article><!--//news-item-->
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
                                            <p class="time text-muted">10:00am - 18:00pm<br>East Campus</p>                  
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
                                        <p class="time text-muted">10:00am - 16:00pm<br>Learning Center</p>                
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
                                        <p class="time text-muted">09:45am - 16:00pm<br>Library</p>                
                                    </div><!--//details-->
                                </article>
                            </section><!--//widget-->
                        </aside>
                    </div><!--//page-row-->
                </div><!--//page-content-->
            </div><!--//page--> 
        </div><!--//content-->
    </div><!--//wrapper-->

  @stop
@stop  