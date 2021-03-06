@extends('clientside.master')
@include('clientside.header')
@include('clientside.footer')
  @section('page-content')
	<!-- ******CONTENT****** --> 
        <div class="content container">
            <div class="page-wrapper">
                <header class="page-heading clearfix">
                    <h1 class="heading-title pull-left">Events</h1>
                    <div class="breadcrumbs pull-right">
                        <ul class="breadcrumbs-list">
                            <li class="breadcrumbs-label">You are here:</li>
                            <li><a href="index.html">Home</a><i class="fa fa-angle-right"></i></li>
                            <li class="current">Events</li>
                        </ul>
                    </div><!--//breadcrumbs-->
                </header> 
                <div class="page-content">
                    <div class="row page-row">
                        <div class="events-wrapper col-md-8 col-sm-7">

                        @foreach($events as $e)                         
                            <article class="events-item page-row has-divider clearfix">
                                <div class="date-label-wrapper col-md-1 col-sm-2">
                                    <p class="date-label">
                                    <?php
                                        $month = substr(date('F', strtotime($e->created_at)), 0, 3);
                                        $day = date('d', strtotime($e->created_at));
                                    ?>
                                        <span class="month">{{$month}}</span>
                                        <span class="date-number">{{$day}}</span>
                                    </p>
                                </div><!--//date-label-wrapper-->
                                <div class="details col-md-11 col-sm-10">
                                    <h3 class="title">{{$e->title}}</h3>
                                    
                                    <p class="meta"><span class="time"><i class="fa fa-clock-o"></i>{{$e->created_at->diffForHumans()}}</span><span class="location"><i class="fa fa-map-marker"></i><a href="#">{{$e->location}}</a></span></p>  
                                    <p class="desc">{{$e->event_details}}</p>                       
                                </div><!--//details-->
                            </article><!--//events-item-->
                        @endforeach    
                                                   
                        {{$events->links()}} 
                            
                        </div><!--//events-wrapper-->
                        <aside class="page-sidebar  col-md-3 col-md-offset-1 col-sm-4 col-sm-offset-1">                    
                            <section class="widget has-divider">
                                <h3 class="title">Video tour</h3>
                                <iframe class="iframe" src="//www.youtube.com/embed/Ks-_Mh1QhMc?rel=0&amp;wmode=transparent" frameborder="0" allowfullscreen=""=""></iframe>
                            </section><!--//widget-->
                            <section class="widget has-divider">
                                <h3 class="title">Latest News</h3>
                                <article class="news-item row">       
                                    <figure class="thumb col-md-2">
                                        <img src="assets/images/news/news-thumb-1.jpg" alt="" >
                                    </figure>
                                    <div class="details col-md-10">
                                        <h4 class="title"><a href="news-single.html">Morbi bibendum consectetuer vulputate sollicitudin</a></h4>
                                    </div>
                                </article><!--//news-item-->
                                <article class="news-item row">       
                                    <figure class="thumb col-md-2">
                                        <img src="assets/images/news/news-thumb-2.jpg" alt="" >
                                    </figure>
                                    <div class="details col-md-10">
                                        <h4 class="title"><a href="news-single.html">Sed tincidunt urna eget turpis pretium hendrerit</a></h4>
                                    </div>
                                </article><!--//news-item-->
                                <article class="news-item row">       
                                    <figure class="thumb col-md-2">
                                        <img src="assets/images/news/news-thumb-3.jpg" alt="" >
                                    </figure>
                                    <div class="details col-md-10">
                                        <h4 class="title"><a href="news-single.html">Duis scelerisque erat iaculis</a></h4>
                                    </div>
                                </article><!--//news-item-->
                                <article class="news-item row">       
                                    <figure class="thumb col-md-2">
                                        <img src="assets/images/news/news-thumb-4.jpg" alt="" >
                                    </figure>
                                    <div class="details col-md-10">
                                        <h4 class="title"><a href="news-single.html">Duis scelerisque erat iaculis</a></h4>
                                    </div>
                                </article><!--//news-item-->
                            </section><!--//widget-->
                        </aside>
                    </div><!--//page-row-->
                </div><!--//page-content-->
            </div><!--//page--> 
        </div><!--//content-->
    </div><!--//wrapper-->  

    @stop
@stop  