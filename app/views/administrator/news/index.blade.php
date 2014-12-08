@extends('administrator.master')
@include('administrator.header')
@section('page-content')
    <!-- START ROW -->
  {{Form::open(array('url'=>'news/save'))}}
  <!-- {{Form::open(array('url'=>'sandbox/submit'))}} -->
    <div class="row">
    <div class="col-lg-12">
            <h1>Create News</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class=""><i class="fa fa-home"></i><a href="{{url('events/create')}}"> News </a></li>
              <li class="active"><i class="fa fa-plus"></i> Create New News</li>
            </ol>
          </div>
    <script>
        tinymce.init({selector:'textarea#details',plugins:['code']});
        </script>
        <div class="col-lg-9">
            {{Session::get('message')}}
      <div class="form-group">
        
        <label for="">News Title</label>
        {{$errors->first('title')}}

        {{Form::text('title','',array('class'=>'form-control',
                                      'placeholder'=>'Enter Title Here'))}}
      </div>
       <div class="form-group">
            <label for="">Featured News Image</label>
            {{$errors->first('news_image')}}

            {{Form::text('news_image','',array('class'=>'form-control',
                                          'placeholder'=>'Enter Image Location Here'))}}
      </div>
      <div class="form-group">
        <label for="">News Content</label>
        <label for="">{{$errors->first('news_content')}}</label>
        {{Form::textarea('news_content','',array('class'=>'form-control','id'=>'details'))}}
      </div>
      <div class="form-group">
        
        <label for="">Published By:</label>
        {{$errors->first('published_by')}}

        {{Form::text('published_by','',array('class'=>'form-control',
                                      'placeholder'=>'Enter Publisher Full Name Here'))}}
      </div>

      <hr>
    </div>



    <!-- START COLUMN 3 -->
    <div class="col-lg-3">
      <div class="panel panel-default">
              <div class="panel-heading"><strong>Publish</strong></div>
              <div class="panel-body">
                {{Form::reset('Reset Inputs',array("class"=>"btn btn-warning btn-sm"))}}
                {{Form::submit('Publish News',array("class"=>"btn btn-primary btn-sm","name"=>"publish"))}}
              </div>
            </div> 
    </div>
    <!-- END COLUMN 3 -->
  </div>
    <!-- END ROW -->
  {{Form::close()}}
  <div class="row">
      <table class="table">
          <tr>
              <th></th>
              <th></th>
              <th></th>

          </tr>
          <td></td>
      </table>
  </div>
@stop
@include('administrator.footer')
@stop