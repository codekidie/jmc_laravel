<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>{{$page_title}}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- styles -->
    {{Skin::stylesheets()}}

    <!-- Font -->
    {{Skin::fonts()}}
    {{Skin::iecss()}}
</head>

<body>

<header>
    <div class="navbar navbar-inverse navbar-static-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>

                <!-- Start nav-collapse -->
                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <li class="dropdown active">
                            <a href="{{url('/')}}">Home </a>
                           
                        </li>
                        {{Skin::menu()}}
                       
                    </ul>
                </div>
                <!-- End nav-collapse -->

                <ul class="social-top">
                    <li><a href="{{Setting::getOptions()->facebook_url}}"><i class="icon-facebook"></i></a></li>
                    <li><a href="{{Setting::getOptions()->twitter_url}}"><i class="icon-twitter"></i></a></li>
                    <li><a href="{{Setting::getOptions()->linkedin_url}}"><i class="icon-linkedin"></i></a></li>
                    <li><a href="{{Setting::getOptions()->gplus_url}}"><i class="icon-google-plus"></i></a></li>
                    <li><a href="{{Setting::getOptions()->pinterest_url}}"><i class="icon-pinterest"></i></a></li>
                </ul>
            </div>
        </div>
    </div>

    <section id="header-contain">
        <div class="container">
            <div class="row">
                <div class="span12">
                    <a class="brand" href="index-2.html"><img src="{{Setting::getOptions()->logo}}" alt="" /></a>
                    <form>
                        <fieldset class="search-form"><!-- 
                            <input class="search" type="text" placeholder="Start searching..."> -->
                            <!-- <button class="search-button" type="button"></button> -->
                        </fieldset>
                    </form>
                    <div class="login-register">
                        <a href="#myModal" class="btn btn-inverse" data-toggle="modal" data-target="#myModal">Login</a>

                       <!--  <a href="#modalRegister" class="btn btn-primary" data-toggle="modal" data-target="#modalRegister">Register it's free</a> -->
                    </div>
                </div>
            </div>
        </div>
    </section>

</header>

