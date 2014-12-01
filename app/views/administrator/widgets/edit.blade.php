@extends('administrator.master')
@include('administrator.header')
  @section('page-content')
  <div class="row">
    <div class="col-lg-12">
            <h1>Widgets</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li><a href="{{url('administrator/widgets')}}"><i class="fa fa-puzzle-piece"></i> Widgets</a></li>
              <li class="active"><i class="fa fa-pencil"></i> Edit {{Widget::edit(Request::segment(4))->name}}</li>
            </ol>
            {{Session::get('message')}}
     </div>

     <!-- START WIDGET FORM -->
     <div class="col-lg-5">
      {{Form::open(array("url"=>"administrator/widgets/update/".Request::segment(4)))}}
       <div class="panel panel-default">
              <div class="panel-heading"><h4>Edit Widget</h4></div>
              <div class="panel-body">
                <div class="form-group">
                  <label>Widget Name</label>
                  <div class="label label-danger">{{$errors->first('name')}}</div>
                  <input class="form-control" name="name" value="{{Widget::edit(Request::segment(4))->name}}">
                </div>
                <div class="form-group">
                  <label>Widget Title</label>
                  <div class="label label-danger">{{$errors->first('title')}}</div>
                  <input class="form-control" name="title" value="{{Widget::edit(Request::segment(4))->title}}">
                </div>
                <div class="form-group">
                  <label>Description</label>
                  <textarea name="description" class="form-control">{{Widget::edit(Request::segment(4))->description}}</textarea>
                </div>
                 <div class="form-group">
                  <label>Icon (Optional)</label>
                  <input class="form-control" name="icon_url" value="{{Widget::edit(Request::segment(4))->icon}}"> 
                  <p class="help-block">Put your icon url here</p>
                 </div>
                <div class="form-group">
                  <label>Text / HTML</label>
                  <div class="label label-danger">{{$errors->first('text_html')}}</div>
                   <textarea name="text_html" class="form-control">{{Widget::edit(Request::segment(4))->text_html}}</textarea>
                </div>
                 <div class="form-group">
                  <button class="btn btn-primary">Update Widget</button>
                 </div>
              </div>
            </div>
            {{Form::close()}}
     </div>
<!-- END FORM  -->

<!-- START WIDGET AREAS -->
<div class="col-lg-7">
  <div class="panel-group" id="accordion">
    @foreach(Widget::get() as $w)
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#{{$w->slug}}">
              {{ucwords($w->name)}} - {{$w->title}}
            </a>
          </h4>
        </div>
        <div id="{{$w->slug}}" class="panel-collapse collapse">
          <div class="panel-body">
            <div class="col-lg-3">
              <a class="thumbnail">
                <img src="{{$w->icon}}" alt="...">
              </a>
            </div>
            <div class="col-lg-9">
              <p>{{$w->text_html}}</p>
            </div>
              <div class="clear clearfix"></div>
              <div class="well well-sm">
                <em>{{$w->description}}</em>
                <p>Call this widget to your theme by putting <strong>GetWidget::put('{{$w->slug}}')</strong></p>
              </div>
              <a href="{{url('administrator/widgets/edit/'.$w->id)}}" class="btn btn-primary"><i class="fa fa-pencil"></i> Edit</a>
              <a href="{{url('administrator/widgets/delete/'.$w->id)}}" class="btn btn-danger"><i class="fa fa-trash-o"></i> Delete</a>
          </div>
        </div>
      </div>
    @endforeach
  </div>
</div>
<!-- END WIDGET AREAS -->
  </div>
  @stop
@include('administrator.footer')