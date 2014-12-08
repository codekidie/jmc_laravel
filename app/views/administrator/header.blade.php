@section('header')
	<!DOCTYPE html>
	<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>{{$page_title}} - JMC Admin Panel</title>
    <!-- Bootstrap core CSS -->
    {{BackendSkin::stylesheets()}}
    
    <!-- Add custom CSS here -->
    
    @if(Request::segment(3) == "add_image" || Request::segment(2) == "media" || Request::segment(2) == "import")
    <link rel="stylesheet" type="text/css" href="{{asset('_assets/backend/js/uploadify/uploadify.css')}}">
    {{LeanSlider::assets()}}
    @endif
    <!-- Page Specific CSS -->
     {{BackendSkin::js()}}
  </head>

  <body>

    <div id="wrapper">
      <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" style="background:#47143c;" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="{{url('administrator')}}">JMC Admin Panel</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav" style="background:#47143c;">
            <li
            @if(Request::segment(2) == "")
            class="active"
            @endif><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li @if(Request::segment(2) == "page")
            class="active"
            @endif><a href="{{url('administrator/page')}}"><i class="fa fa-book"></i> Pages</a></li>
            <li @if(Request::segment(2) == "posts" || Request::segment(2) == "post")
            class="active"
            @endif><a href="{{url('administrator/posts')}}"><i class="fa fa-pencil-square"></i> Posts</a></li>
            <li><a href="{{url('administrator/category')}}"><i class="fa fa-archive"></i> Categories</a></li>
            <li><a href="{{url('administrator/media')}}"><i class="fa fa-picture-o"></i> Media</a></li>
            <li><a href="{{url('administrator/slider')}}"><i class="fa fa-film"></i> Slider</a></li>
            <li><a href="{{url('administrator/menu')}}"><i class="fa fa-bars"></i> Menu</a></li>
            <li><a href="{{url('administrator/widgets')}}"><i class="fa fa-puzzle-piece"></i> Widgets</a></li>
             <li><a href="{{url('events/create')}}"><i class="fa fa-list"></i> Events</a></li>
             <li><a href="{{url('news/create')}}"><i class="fa fa-list"></i> News </a></li>

            
            <li><a href="{{url('administrator/settings')}}"><i class="fa fa-gear"></i> Settings</a></li>  
          </ul>

          <ul class="nav navbar-nav navbar-right navbar-user">
            <li><a href="{{url('/')}}" target="_blank">View Site</a></li>
            <li class="dropdown messages-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="badge" id="message_count"></span> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="dropdown-header" id="message-header"></li>
                <span id="new-messages"></span>
                <li class="divider"></li>
                <li ><a href="{{url('inbox')}}">View Inbox <span class="badge" id="message-link"></span></a></li>
              </ul>
            </li>
            <li class="dropdown user-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> @if(Auth::check()){{ucwords(Auth::user()->firstname)}} @endif<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="{{url('profile')}}"><i class="fa fa-user"></i> Profile</a></li>
                <li><a href="{{url('inbox')}}"><i class="fa fa-envelope"></i> Inbox <span class="badge"></span></a></li>
                <li><a href="{{url('administrator/settings')}}"><i class="fa fa-gear"></i> Settings</a></li>
                <li class="divider"></li>
                <li><a href="{{url('logout')}}"><i class="fa fa-power-off"></i> Log Out</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </nav>
@stop