@extends('clientside.master')
@include('clientside.header')
@include('clientside.footer')
  @section('page-content')
  		 <!-- ******CONTENT****** --> 
        <div class="content container">
            <div class="page-wrapper">
                <header class="page-heading clearfix">
                    <h1 class="heading-title pull-left">Course List</h1>
                    <div class="breadcrumbs pull-right">
                        <ul class="breadcrumbs-list">
                            <li class="breadcrumbs-label">You are here:</li>
                            <li><a href="index.html">Home</a><i class="fa fa-angle-right"></i></li>
                            <li class="current">Course List</li>
                        </ul>
                    </div><!--//breadcrumbs-->
                </header> 
                <div class="page-content">
                    <div class="row page-row">
                        <div class="courses-wrapper col-md-8 col-sm-7">           
                            <div class="featured-courses tabbed-info page-row">             
                                <ul class="nav nav-tabs">
                                  <li class="active"><a href="#tab1" data-toggle="tab">Featured</a></li>
                                  <li><a href="#tab2" data-toggle="tab">Popular</a></li>
                                  <li><a href="#tab3" data-toggle="tab">New</a></li>
                                </ul>
                                <div class="tab-content">
                                  <div class="tab-pane active" id="tab1">
                                      <div class="row">
                                          <div class="item col-md-3 col-sm-6 col-xs-6">
                                              <img class="img-responsive" src="assets/images/courses/course-thumb-1.jpg"  alt="" />
                                              <p class="text-center"><a href="#">Web Design</a></p>
                                          </div><!--//item-->
                                          <div class="item col-md-3 col-sm-6 col-xs-6">
                                              <img class="img-responsive" src="assets/images/courses/course-thumb-2.jpg"  alt="" />
                                              <p class="text-center"><a href="#">Spanish</a></p>
                                          </div><!--//item-->
                                          <div class="clearfix visible-xs"></div>
                                          <div class="item col-md-3 col-sm-6 col-xs-6">
                                              <img class="img-responsive" src="assets/images/courses/course-thumb-3.jpg"  alt="" />
                                              <p class="text-center"><a href="#">Digital Marketing</a></p>
                                          </div><!--//item-->
                                          <div class="item col-md-3 col-sm-6 col-xs-6">
                                              <img class="img-responsive" src="assets/images/courses/course-thumb-4.jpg"  alt="" />
                                              <p class="text-center"><a href="#">Accounting</a></p>
                                          </div><!--//item-->
                                      </div><!--//row-->
                                  </div>
                                  <div class="tab-pane" id="tab2">
                                      <div class="row">
                                          <div class="item col-md-3 col-sm-6 col-xs-6">
                                              <img class="img-responsive" src="assets/images/courses/course-thumb-4.jpg"  alt="" />
                                              <p class="text-center"><a href="#">Aliquam tortor massa</a></p>
                                          </div><!--//item-->
                                          <div class="item col-md-3 col-sm-6 col-xs-6">
                                              <img class="img-responsive" src="assets/images/courses/course-thumb-2.jpg"  alt="" />
                                              <p class="text-center"><a href="#">Maecenas mattis</a></p>
                                          </div><!--//item-->
                                          <div class="clearfix visible-xs"></div>
                                          <div class="item col-md-3 col-sm-6 col-xs-6">
                                              <img class="img-responsive" src="assets/images/courses/course-thumb-3.jpg"  alt="" />
                                              <p class="text-center"><a href="#">Vivamus eu dui</a></p>
                                          </div><!--//item-->
                                          <div class="item col-md-3 col-sm-6 col-xs-6">
                                              <img class="img-responsive" src="assets/images/courses/course-thumb-1.jpg"  alt="" />
                                              <p class="text-center"><a href="#">Nullam porttitor</a></p>
                                          </div><!--//item-->
                                      </div><!--//row-->
                                  </div>
                                  <div class="tab-pane" id="tab3">
                                      <div class="row">
                                          <div class="item col-md-3 col-sm-6 col-xs-6">
                                              <img class="img-responsive" src="assets/images/courses/course-thumb-3.jpg"  alt="" />
                                              <p class="text-center"><a href="#">Aliquam tortor massa</a></p>
                                          </div><!--//item-->
                                          <div class="item col-md-3 col-sm-6 col-xs-6">
                                              <img class="img-responsive" src="assets/images/courses/course-thumb-1.jpg"  alt="" />
                                              <p class="text-center"><a href="#">Maecenas mattis</a></p>
                                          </div><!--//item-->
                                          <div class="clearfix visible-xs"></div>
                                          <div class="item col-md-3 col-sm-6 col-xs-6">
                                              <img class="img-responsive" src="assets/images/courses/course-thumb-2.jpg"  alt="" />
                                              <p class="text-center"><a href="#">Vivamus eu dui</a></p>
                                          </div><!--//item-->
                                          <div class="item col-md-3 col-sm-6 col-xs-6">
                                              <img class="img-responsive" src="assets/images/courses/course-thumb-4.jpg"  alt="" />
                                              <p class="text-center"><a href="#">Nullam porttitor</a></p>
                                          </div><!--//item-->
                                      </div><!--//row-->
                                  </div>
                                </div>
                            </div><!--//featured-courses-->
                            <p class="text-muted page-row">Image credit: <a href="http://www.flickr.com/photos/shaneglobal/" target="_blank">Shane Global Language Centres</a>, <a href="http://creativecommons.org/licenses/by/2.0/deed.en" target="_blank">Creative Commons 2.0 license</a></p>
                            <div class="course-list-header box clearfix">
                                <div class="summary pull-left"><strong>89</strong> offline courses | <strong>68</strong> online courses</div>
                                <div class="sort pull-right">                                
                                    <label class="control-label pull-left">Sort by: </label>
                                    <select class="sort-options form-control pull-left">
                                        <option>Start date</option>
                                        <option>Duration</option>
                                        <option>Level</option>
                                    </select>                                  
                                </div><!--//sort-->
                            </div><!--//course-list-header-->   
                            <div class="course-item-header row-divider hidden-sm hidden-xs">
                                <div class="row">
                                    <div class="col-title col-md-4 col-sm-6"><strong>Course name</strong></div>
                                    <div class="col-meta col-md-8 col-sm-6">
                                        <div class="row">
                                            <div class="col-start col-md-3"><strong>Start date</strong></div>                                    
                                            <div class="col-duration col-md-2"><strong>Duration</strong></div>
                                            <div class="col-level col-md-3"><strong>Level</strong></div>
                                            <div class="col-location col-md-4"><strong>Location</strong></div>   
                                        </div>                                 
                                    </div><!--//col-meta-->    
                                </div><!---//row-->                            
                            </div><!--//course-item-header-->                    
                            <article class="course-item row-divider">   
                                <div class="details row">
                                    <div class="col-title col-md-4 col-sm-6"><a href="course-single.html">Web Design Foundation</a> <span class="label label-success">New</span></div>
                                    <div class="col-meta col-md-8 col-sm-6">
                                        <div class="row">
                                            <div class="col-start col-md-3">10 Sep 2014</div>                                    
                                            <div class="col-duration col-md-2">1 year</div>
                                            <div class="col-level col-md-3">Beginner</div>
                                            <div class="col-location col-md-4">Remote (Online)</div>   
                                        </div>                                 
                                    </div><!--//col-meta-->                           
                                </div><!--//details-->
                            </article><!--//course-item-->
                            <article class="course-item row-divider">       
                                <div class="details row">
                                    <div class="col-title col-md-4 col-sm-6"><a href="course-single.html">Web Design Advanced</a>  <span class="label label-success">New</span></div>
                                    <div class="col-meta col-md-8 col-sm-6">
                                        <div class="row">
                                            <div class="col-start col-md-3">20 Sep 2014</div>                                    
                                            <div class="col-duration col-md-2">2 years</div>
                                            <div class="col-level col-md-3">Advanced</div>
                                            <div class="col-location col-md-4">College Green Campus</div>   
                                        </div>                                 
                                    </div><!--//col-meta-->                      
                                </div><!--//details-->
                            </article><!--//course-item-->
                            <article class="course-item row-divider">   
                                <div class="details row">
                                    <div class="col-title col-md-4 col-sm-6"><a href="course-single.html">Web Development Foundation</a></div>
                                    <div class="col-meta col-md-8 col-sm-6">
                                        <div class="row">
                                            <div class="col-start col-md-3">10 Sep 2014</div>                                    
                                            <div class="col-duration col-md-2">1 year</div>
                                            <div class="col-level col-md-3">Intermediate</div>
                                            <div class="col-location col-md-4">Remote (Online)</div>   
                                        </div>                                 
                                    </div><!--//col-meta-->                           
                                </div><!--//details-->
                            </article><!--//course-item-->
                            <article class="course-item row-divider">   
                                <div class="details row">
                                    <div class="col-title col-md-4 col-sm-6"><a href="course-single.html">Web Development Advanced</a></div>
                                    <div class="col-meta col-md-8 col-sm-6">
                                        <div class="row">
                                            <div class="col-start col-md-3">10 Sep 2014</div>                                    
                                            <div class="col-duration col-md-2">1 year</div>
                                            <div class="col-level col-md-3">Intermediate</div>
                                            <div class="col-location col-md-4">College Green Campus</div>   
                                        </div>                                 
                                    </div><!--//col-meta-->                           
                                </div><!--//details-->
                            </article><!--//course-item-->
                            
                            <article class="course-item row-divider">       
                                <div class="details row">
                                    <div class="col-title col-md-4 col-sm-6"><a href="course-single.html">Digital Marketing Foundation</a>  <span class="label label-warning">Full</span></div>
                                    <div class="col-meta col-md-8 col-sm-6">
                                        <div class="row">
                                            <div class="col-start col-md-3">25 Sep 2014</div>                                    
                                            <div class="col-duration col-md-2">1 year</div>
                                            <div class="col-level col-md-3">Intermediate</div>
                                            <div class="col-location col-md-4">Queen Square Campus</div>   
                                        </div>                                 
                                    </div><!--//col-meta-->                      
                                </div><!--//details-->
                            </article><!--//course-item-->
                            <article class="course-item row-divider">       
                                <div class="details row">
                                    <div class="col-title col-md-4 col-sm-6"><a href="course-single.html">Digital Marketing Foundation</a></div>
                                    <div class="col-meta col-md-8 col-sm-6">
                                        <div class="row">
                                            <div class="col-start col-md-3">25 Sep 2014</div>                                    
                                            <div class="col-duration col-md-2">1 year</div>
                                            <div class="col-level col-md-3">Intermediate</div>
                                            <div class="col-location col-md-4">Queen Square Campus</div>   
                                        </div>                                 
                                    </div><!--//col-meta-->                      
                                </div><!--//details-->
                            </article><!--//course-item-->
                            <article class="course-item row-divider">       
                                <div class="details row">
                                    <div class="col-title col-md-4 col-sm-6"><a href="course-single.html">Digital Marketing Advanced</a></div>
                                    <div class="col-meta col-md-8 col-sm-6">
                                        <div class="row">
                                            <div class="col-start col-md-3">20 Sep 2014</div>                                    
                                            <div class="col-duration col-md-2">1 year</div>
                                            <div class="col-level col-md-3">Advanced</div>
                                            <div class="col-location col-md-4">Queen Square Campus</div>   
                                        </div>                                 
                                    </div><!--//col-meta-->                      
                                </div><!--//details-->
                            </article><!--//course-item-->
                            <article class="course-item row-divider">       
                                <div class="details row">
                                    <div class="col-title col-md-4 col-sm-6"><a href="course-single.html">Accounting Foundation</a></div>
                                    <div class="col-meta col-md-8 col-sm-6">
                                        <div class="row">
                                            <div class="col-start col-md-3">25 Sep 2014</div>                                    
                                            <div class="col-duration col-md-2">1 year</div>
                                            <div class="col-level col-md-3">Intermediate</div>
                                            <div class="col-location col-md-4">Queen Square Campus</div>   
                                        </div>                                 
                                    </div><!--//col-meta-->                      
                                </div><!--//details-->
                            </article><!--//course-item-->
                            <article class="course-item row-divider">       
                                <div class="details row">
                                    <div class="col-title col-md-4 col-sm-6"><a href="course-single.html">Accounting Advanced</a></div>
                                    <div class="col-meta col-md-8 col-sm-6">
                                        <div class="row">
                                            <div class="col-start col-md-3">20 Sep 2014</div>                                    
                                            <div class="col-duration col-md-2">1 year</div>
                                            <div class="col-level col-md-3">Advanced</div>
                                            <div class="col-location col-md-4">Queen Square Campus</div>   
                                        </div>                                 
                                    </div><!--//col-meta-->                      
                                </div><!--//details-->
                            </article><!--//course-item-->
                            <article class="course-item row-divider">       
                                <div class="details row">
                                    <div class="col-title col-md-4 col-sm-6"><a href="course-single.html">Applied Mathematics</a></div>
                                    <div class="col-meta col-md-8 col-sm-6">
                                        <div class="row">
                                            <div class="col-start col-md-3">25 Sep 2014</div>                                    
                                            <div class="col-duration col-md-2">2 year</div>
                                            <div class="col-level col-md-3">Advanced</div>
                                            <div class="col-location col-md-4">College Green Campus</div>   
                                        </div>                                 
                                    </div><!--//col-meta-->                      
                                </div><!--//details-->
                            </article><!--//course-item-->
                            <article class="course-item row-divider">       
                                <div class="details row">
                                    <div class="col-title col-md-4 col-sm-6"><a href="course-single.html">Applied Physics</a></div>
                                    <div class="col-meta col-md-8 col-sm-6">
                                        <div class="row">
                                            <div class="col-start col-md-3">20 Sep 2014</div>                                    
                                            <div class="col-duration col-md-2">2 year</div>
                                            <div class="col-level col-md-3">Advanced</div>
                                            <div class="col-location col-md-4">College Green Campus</div>   
                                        </div>                                 
                                    </div><!--//col-meta-->                      
                                </div><!--//details-->
                            </article><!--//course-item-->
                            
                            <ul class="pagination">
                                <li class="disabled"><a href="#">&laquo;</a></li>
                                <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">&raquo;</a></li>
                            </ul>                        
                        </div><!--//courses-wrapper-->
                        <aside class="page-sidebar  col-md-3 col-md-offset-1 col-sm-4 col-sm-offset-1">  
                            <section class="widget has-divider"> 
                                <h3 class="title">Apply Online</h3>
                                <p>Donec pulvinar arcu lacus, 20% vel aliquam libero scelerisque a.</p>
                                <p class="promo-badge">
                                    <a class="FireBush" href="#">
                                        <span class="percentage">20% <span class="off">OFF</span></span>                    
                                        <br>
                                        <span class="desc">Online application</span>                  
                                    </a>
                                </p>
                            </section><!--//widget-->    
                            <section class="widget has-divider">
                                <h3 class="title">Download Prospectus</h3>
                                <p>Donec pulvinar arcu lacus, vel aliquam libero scelerisque a. Cras mi tellus, vulputate eu eleifend at, consectetur fringilla lacus. Nulla ut purus.</p>
                                <a class="btn btn-theme" href="#"><i class="fa fa-download"></i>Download now</a>
                            </section><!--//widget-->              
                            <section class="widget row-divider">
                                <h3 class="title">Student Testimonials</h3>
                                <div id="testimonials-carousel" class="testimonials-carousel carousel slide">
                                    <div class="carousel-inner">
                                        <div class="item">
                                            <blockquote class="quote">
                                                <i class="fa fa-quote-left"></i>
                                                I’m very happy interdum eget ipsum. Nunc pulvinar ut nulla eget sollicitudin. In hac habitasse platea dictumst. Integer mattis varius ipsum, posuere posuere est porta vel. Integer metus ligula, blandit ut fermentum a, rhoncus in ligula. Duis luctus.
                                            </blockquote>                
                                            <div class="row">
                                                <p class="people col-md-8 col-md-push-1"><span class="name">Marissa Spencer</span><br><span class="title">Curabitur commodo</span></p>
                                                <img class="profile col-md-4" src="assets/images/testimonials/profile-1.png" alt="">
                                            </div>                               
                                        </div><!--//item-->
                                        <div class="item">
                                            <blockquote class="quote">
                                                <i class="fa fa-quote-left"></i>
                                                I'm very pleased commodo gravida ultrices. Sed massa leo, aliquet non velit eu, volutpat vulputate odio. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor metus eros, ut fringilla nulla auctor a.
                                            </blockquote>
                                            <div class="row">
                                                <p class="people col-md-8 col-md-push-1"><span class="name">Marco Antonio</span><br><span class="title"> Gravida ultrices</span></p>
                                                <img class="profile col-md-4" src="assets/images/testimonials/profile-2.png" alt="">
                                            </div>                 
                                        </div><!--//item-->
                                        <div class="item active">
                                            <blockquote class="quote">
                                                <i class="fa fa-quote-left"></i>
                                                I'm delighted commodo gravida ultrices. Sed massa leo, aliquet non velit eu, volutpat vulputate odio. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor metus eros, ut fringilla nulla auctor a.
                                            </blockquote>
                                            <div class="row">
                                                <p class="people col-md-8 col-md-push-1"><span class="name">Kate White</span><br><span class="title"> Gravida ultrices</span></p>
                                                <img class="profile col-md-4" src="assets/images/testimonials/profile-3.png" alt="">
                                            </div>                 
                                        </div><!--//item-->
                                        
                                    </div><!--//carousel-inner-->
                                    <div class="carousel-controls">
                                        <a class="prev" href="#testimonials-carousel" data-slide="prev"><i class="fa fa-caret-left"></i></a>
                                        <a class="next" href="#testimonials-carousel" data-slide="next"><i class="fa fa-caret-right"></i></a>
                                    </div><!--//carousel-controls-->
                                </div><!--//testimonials-carousel-->                             
                            </section><!--//widget-->
                             
                        </aside>
                    </div><!--//page-row-->
                </div><!--//page-content-->
            </div><!--//page--> 
        </div><!--//content-->
      </div><!--//wrapper-->


    @stop
@stop  