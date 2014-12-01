@extends('administrator.master')
@include('administrator.header')
@include('administrator.footer')
  @section('page-content')
          <div class="row">
            <div class="col-lg-12">
              <h1>Dashboards</h1>
              <ol class="breadcrumb">
                <li class="active"><i class="fa fa-dashboard"></i> Dashboard</li>
              </ol>
            </div>
          </div><!-- /.row -->

          <div class="row">                                                                                            
            <div class="col-lg-3">
              <div class="panel panel-info">
                <div class="panel-heading">
                  <div class="row">
                    <div class="col-xs-6">
                      <i class="fa fa-book fa-5x"></i>
                    </div>
                    <div class="col-xs-6 text-right">
                      <p class="announcement-heading">{{count(Query::getAllPages())}}</p>
                      <p class="announcement-text">Pages</p>
                    </div>
                  </div>        
                </div>
                <a href="{{url('administrator/page')}}">
                  <div class="panel-footer announcement-bottom">
                    <div class="row">
                      <div class="col-xs-6">
                        View all pages
                      </div>
                      <div class="col-xs-6 text-right">
                        <i class="fa fa-arrow-circle-right"></i>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-3">
              <div class="panel panel-warning">
                <div class="panel-heading">
                  <div class="row">
                    <div class="col-xs-6">
                      <i class="fa fa fa-pencil-square fa-5x"></i>
                    </div>
                    <div class="col-xs-6 text-right">
                      <p class="announcement-heading">{{count(Query::getAllPosts())}}</p>
                      <p class="announcement-text">Blog Posts</p>
                    </div>
                  </div>
                </div>
                <a href="{{url('administrator/posts')}}">
                  <div class="panel-footer announcement-bottom">
                    <div class="row">
                      <div class="col-xs-6">
                        View posts
                      </div>
                      <div class="col-xs-6 text-right">
                        <i class="fa fa-arrow-circle-right"></i>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-3">
              <div class="panel panel-danger">
                <div class="panel-heading">
                  <div class="row">
                    <div class="col-xs-6">
                      <i class="fa fa-picture-o fa-5x"></i>
                    </div>
                    <div class="col-xs-6 text-right">
                      <p class="announcement-heading">{{count(Photo::selectImageNoAttachments())}}</p>
                      <p class="announcement-text">Photos</p>
                    </div>
                  </div>
                </div>
                <a href="{{url('administrator/media')}}">
                  <div class="panel-footer announcement-bottom">
                    <div class="row">
                      <div class="col-xs-6">
                       Media Files
                      </div>
                      <div class="col-xs-6 text-right">
                        <i class="fa fa-arrow-circle-right"></i>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
            </div>
          </div><!-- /.row -->

          <div class="row">
            <div class="col-lg-12">
              <!-- START DATE SELECT -->
                  <div id="date-select">
                   
                    
                    <div class="col-lg-4">
                       <label for="">Start Date</label>
                      <div class="input-group date">
                      <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                      <input type="text" name="date-select" class="form-control"  id="startDate" readonly>
                      </div>
                    </div>

                    <div class="col-lg-4">
                       <label for="">End Date</label>
                      <div class="input-group date">
                      <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                      <input type="text" name="date-select" class="form-control"  id="endDate" readonly>
                      <span class="input-group-btn">
                          <button id="search-traffic" class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                      </span>
                      </div>
                    </div>
                    
                  </div>
                  <!-- END DATE SELECT -->
            </div>
            <div class="clear clearfix"></div><br>
            <div class="col-lg-12">
              <div class="panel panel-primary">
                <div class="panel-heading">
                  <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Traffic Statistics
                  </h3>
                </div>
                <div class="panel-body">

                  <div id="morris-chart-bar"></div>
                </div>
              </div>
            </div>
          </div><!-- /.row -->
          
  @stop
@stop
