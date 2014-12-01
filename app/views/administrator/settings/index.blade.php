@extends('administrator.master')
@include('administrator.header')
  @section('page-content')
  <div class="row">
    <div class="col-lg-12">
            <h1>Settings</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class="active"><i class="fa fa-gear"></i> Settings</li>
            </ol>
            {{Session::get('message')}}
     </div>
<!-- START GENERAL SETTINGS -->
     <div class="col-lg-4">
      {{Form::open(array('action' => 'SettingsController@update'))}}
       <div class="panel panel-default">
              <div class="panel-heading"><h4>General Settings</h4></div>
              <div class="panel-body">
                <div class="form-group">
                  <label>Site Title</label>
                  <input class="form-control" name="title" value="{{Setting::getOptions()->title}}">
                </div>
                <div class="form-group">
                  <label>Site Address(URL)</label>
                  <input class="form-control" name="url" value="{{Setting::getOptions()->url}}">
                </div>
                <div class="form-group">
                  <label>Upload Directory</label>
                  <input class="form-control"  name="upload_url" value="{{Setting::getOptions()->upload_directory}}">
                  <p class="help-block">Put your preferred directory for your media files.</p>
                </div>
                 <div class="form-group">
                  <label>Subscription News Text</label>
                  <textarea class="form-control" name="news">{{Setting::getOptions()->subscribe_text}}</textarea>
                </div>
                <div class="form-group">
                  <label>Logo</label>
                  <input class="form-control" name="logo" value="{{Setting::getOptions()->logo}}">
                  <p class="help-block">Put your logo url here, where your logo asset is located</p>

                </div>
              </div>
            </div>
     </div>
<!-- END GENERAL SETTINGS  -->
<!-- START SOCIAL SETTINGS -->
     <div class="col-lg-4">
       <div class="panel panel-default">
              <div class="panel-heading"><h4>Social Sharing</h4></div>
              <div class="panel-body">
                <div class="form-group">
                  <label>Facebook</label>
                  <input class="form-control" name="fb_url" value="{{Setting::getOptions()->facebook_url}}">
                </div>
                <div class="form-group">
                  <label>Twitter</label>
                  <input class="form-control" name="tw_url" value="{{Setting::getOptions()->twitter_url}}">
                </div>
                <div class="form-group">
                  <label>Google Plus</label>
                  <input class="form-control" name="gplus_url" value="{{Setting::getOptions()->gplus_url}}">
                </div>
                 <div class="form-group">
                  <label>LinkedIn</label>
                  <input class="form-control" name="in_url" value="{{Setting::getOptions()->linkedin_url}}">
                 </div>
                 <div class="form-group">
                  <label>Pinterest</label>
                  <input class="form-control" name="pin_url" value="{{Setting::getOptions()->pinterest_url}}">
                 </div>
              </div>
            </div>
     </div>
<!-- END SOCIAL SETTINGS  -->
<div class="clear clearfix"></div>
<div class="col-lg-12">
  <div class="form-group">
      <button type="submit" class="btn btn-primary">Update</button>
  </div>
</div>
{{Form::close()}}
  @stop
@include('administrator.footer')