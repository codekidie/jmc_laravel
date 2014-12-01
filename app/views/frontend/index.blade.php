@extends('frontend.templates.master')
@include('frontend.partials.featured_slider')
@include('frontend.partials.modal_login')
@include('frontend.partials.modal_register')
@section('content')

    <!-- Start intro -->
    <section id="intro">
        <div class="container">
            <div class="row">
                <div class="span12 aligncenter marginbot25">
                    <h4>Four Steps to Join With Us</h4>
                </div>
                <div class="span3 aligncenter">
                    {{GetWidget::put('donate_blood')}}
                </div>
                <div class="span3 aligncenter">
                    {{GetWidget::put('get_credentials')}}
                </div>
                <div class="span3 aligncenter">
                    {{GetWidget::put('get_notified')}}
                </div>
                <div class="span3 aligncenter">
                    {{GetWidget::put('earn_badges')}}
                </div>
              
            </div>
        </div>
    </section>
    <!-- End intro -->
    <div class="row">
        
    </div>

    <!-- Start contain -->
    <section id="contain">
        <div class="container">
            <div class="row">
                <div class="span12">
                    <div id="filter-bar" class="btn-group">
                      <!--   <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            Sort item by
                            <span class="caret"></span>
                        </a> -->
                        <ul id="filters" class="dropdown-menu">
                            <li><a href="#" data-filter=".all">All items</a></li>
                            <li><a href="#" data-filter=".latest">Latest items</a></li>
                            <li><a href="#" data-filter=".popular">Popular items</a></li>
                            <li><a href="#" data-filter=".premium">Premium items</a></li>
                            <li><a href="#" data-filter=".free">Free items</a></li>
                        </ul>
                    </div>
                  <!--   <span class="page-count">1 of 264 File</span> -->
                </div>
            </div>
            <!-- <ul id="portfolio" class="row clearfix marginbot10">
                <li class="item span4 all free popular latest">
                    <div class="image-wrapper">
                        <div class="image-caption"></div>
                        <div class="image-title">
                            <h4><a href="detail.html">Usu veri noster graecis quo</a></h4>
                        </div>
                        <a href="{{asset('_assets/frontend/img/portfolio/big.jpg')}}" data-pretty="prettyPhoto" class="zoom">zoom</a>
                        <div class="portfolio-metta">
                            <a href="#"><i class="icon-eye-open"></i>3445</a>
                            <a href="#"><i class="icon-thumbs-up"></i>98</a>
                            <a href="#"><i class="icon-cloud-download"></i>205</a>
                        </div>
                        <img src="{{asset('_assets/frontend/img/portfolio/img1.jpg')}}" alt=""/>
                    </div>
                </li>
                <li class="item span4 all premium">
                    <div class="image-wrapper">
                        <div class="image-caption"></div>
                        <div class="image-title">
                            <h4><a href="detail.html">Usu veri noster graecis quo</a></h4>
                        </div>
                        <a href="{{asset('_assets/frontend/img/portfolio/big.jpg')}}" data-pretty="prettyPhoto" class="zoom">zoom</a>
                        <div class="portfolio-metta">
                            <a href="#"><i class="icon-eye-open"></i>305</a>
                            <a href="#"><i class="icon-thumbs-up"></i>28</a>
                            <a href="#"><i class="icon-cloud-download"></i>15</a>
                        </div>
                        <img src="{{asset('_assets/frontend/img/portfolio/img2.jpg')}}" alt=""/>
                    </div>
                </li>
                <li class="item span4 all free">
                    <div class="image-wrapper">
                        <div class="image-caption"></div>
                        <div class="image-title">
                            <h4><a href="detail.html">Usu veri noster graecis quo</a></h4>
                        </div>
                        <a href="{{asset('_assets/frontend/img/portfolio/big.jpg')}}" data-pretty="prettyPhoto" class="zoom">zoom</a>
                        <div class="portfolio-metta">
                            <a href="#"><i class="icon-eye-open"></i>225</a>
                            <a href="#"><i class="icon-thumbs-up"></i>45</a>
                            <a href="#"><i class="icon-cloud-download"></i>35</a>
                        </div>
                        <img src="{{asset('_assets/frontend/img/portfolio/img3.jpg')}}" alt=""/>
                    </div>
                </li>
                <li class="item span4 all free">
                    <div class="image-wrapper">
                        <div class="image-caption"></div>
                        <div class="image-title">
                            <h4><a href="detail.html">Usu veri noster graecis quo</a></h4>
                        </div>
                        <a href="{{asset('_assets/frontend/img/portfolio/big.jpg')}}" data-pretty="prettyPhoto" class="zoom">zoom</a>
                        <div class="portfolio-metta">
                            <a href="#"><i class="icon-eye-open"></i>678</a>
                            <a href="#"><i class="icon-thumbs-up"></i>33</a>
                            <a href="#"><i class="icon-cloud-download"></i>112</a>
                        </div>
                        <img src="{{asset('_assets/frontend/img/portfolio/img4.jpg')}}" alt=""/>
                    </div>
                </li>
                <li class="item span4 all premium popular">
                    <div class="image-wrapper">
                        <div class="image-caption"></div>
                        <div class="image-title">
                            <h4><a href="detail.html">Usu veri noster graecis quo</a></h4>
                        </div>
                        <a href="{{asset('_assets/frontend/img/portfolio/big.jpg')}}" data-pretty="prettyPhoto" class="zoom">zoom</a>
                        <div class="portfolio-metta">
                            <a href="#"><i class="icon-eye-open"></i>22</a>
                            <a href="#"><i class="icon-thumbs-up"></i>11</a>
                            <a href="#"><i class="icon-cloud-download"></i>2</a>
                        </div>
                        <img src="{{asset('_assets/frontend/img/portfolio/img5.jpg')}}" alt=""/>
                    </div>
                </li>
                <li class="item span4 all free">
                    <div class="image-wrapper">
                        <div class="image-caption"></div>
                        <div class="image-title">
                            <h4><a href="detail.html">Usu veri noster graecis quo</a></h4>
                        </div>
                        <a href="{{asset('_assets/frontend/img/portfolio/big.jpg')}}" data-pretty="prettyPhoto" class="zoom">zoom</a>
                        <div class="portfolio-metta">
                            <a href="#"><i class="icon-eye-open"></i>233</a>
                            <a href="#"><i class="icon-thumbs-up"></i>67</a>
                            <a href="#"><i class="icon-cloud-download"></i>45</a>
                        </div>
                        <img src="{{asset('_assets/frontend/img/portfolio/img6.jpg')}}" alt=""/>
                    </div>
                </li>
                <li class="item span4 all free latest">
                    <div class="image-wrapper">
                        <div class="image-caption"></div>
                        <div class="image-title">
                            <h4><a href="detail.html">Usu veri noster graecis quo</a></h4>
                        </div>
                        <a href="{{asset('_assets/frontend/img/portfolio/big.jpg')}}" data-pretty="prettyPhoto" class="zoom">zoom</a>
                        <div class="portfolio-metta">
                            <a href="#"><i class="icon-eye-open"></i>544</a>
                            <a href="#"><i class="icon-thumbs-up"></i>233</a>
                            <a href="#"><i class="icon-cloud-download"></i>122</a>
                        </div>
                        <img src="{{asset('_assets/frontend/img/portfolio/img7.jpg')}}" alt=""/>
                    </div>
                </li>
                <li class="item span4 all free">
                    <div class="image-wrapper">
                        <div class="image-caption"></div>
                        <div class="image-title">
                            <h4><a href="detail.html">Usu veri noster graecis quo</a></h4>
                        </div>
                        <a href="{{asset('_assets/frontend/img/portfolio/big.jpg')}}" data-pretty="prettyPhoto" class="zoom">zoom</a>
                        <div class="portfolio-metta">
                            <a href="#"><i class="icon-eye-open"></i>500</a>
                            <a href="#"><i class="icon-thumbs-up"></i>288</a>
                            <a href="#"><i class="icon-cloud-download"></i>33</a>
                        </div>
                        <img src="{{asset('_assets/frontend/img/portfolio/img8.jpg')}}" alt=""/>
                    </div>
                </li>
                <li class="item span4 all latest popular">
                    <div class="image-wrapper">
                        <div class="image-caption"></div>
                        <div class="image-title">
                            <h4><a href="detail.html">Usu veri noster graecis quo</a></h4>
                        </div>
                        <a href="{{asset('_assets/frontend/img/portfolio/big.jpg')}}" data-pretty="prettyPhoto" class="zoom">zoom</a>
                        <div class="portfolio-metta">
                            <a href="#"><i class="icon-eye-open"></i>222</a>
                            <a href="#"><i class="icon-thumbs-up"></i>21</a>
                            <a href="#"><i class="icon-cloud-download"></i>22</a>
                        </div>
                        <img src="{{asset('_assets/frontend/img/portfolio/img9.jpg')}}" alt=""/>
                    </div>
                </li>
            </ul> -->
            <div class="row">
                <div class="span12">
                    <ul class="pager marginnone">
                      <!--   <li class="previous disabled"><a href="#">&larr; Older</a></li>
                        <li class="next"><a href="#">Newer &rarr;</a></li> -->
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- End contain -->


@stop