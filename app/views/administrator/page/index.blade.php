@extends('administrator.master')
@include('administrator.header')
	@section('page-content')
	<!-- START ROW -->
	<div class="row">
    <div class="col-lg-12">
            <h1>Pages</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class="active"><i class="fa fa-book"></i> Page</li>
               @if(Auth::user()->role == "admin") 
              <li class=""><i class="fa fa-book"></i><a href="{{url('administrator/page/create')}}">  Create New Page</a></li>
              @endif
            </ol>
            
          </div>
		<div class="col-lg-12">
      
			{{Session::get('message')}}
			{{Form::open(array('url'=>'administrator/page/delete_selected'))}}
			<table class="table table-bordered table-hover table-striped tablesorter">
				
                <thead>
                  <tr>
                  	<th class="header">
                  		
                  	</th>
                    <th class="header">Title <i class="fa fa-sort"></i></th>
                    <th class="header">Content <i class="fa fa-sort"></i></th>
                    <th class="header">Status <i class="fa fa-sort"></i></th>
                    <th class="header">Date Created <i class="fa fa-sort"></i></th>
                    <th class="header"></th>
                  </tr>
                </thead>

                <tbody>
                	@foreach($pages as $p)
                  <tr>
                  	<td>
                  		<input type="checkbox" name="page[]" class="" value="{{$p->id}}">
                  	</td>
                    <td width="250"><a href="{{url('administrator/page/edit/'.$p->id)}}">{{ucwords($p->title)}}</a></td>
                    <td width="400">{{str_limit($p->details,190)}}</td>
                    <td>
                      @if($p->status == 1)
                        <a href="{{url('administrator/page/update_status/'.$p->id)}}"><span class="label label-primary">Published</span></a>
                      @else
                        <a href="{{url('administrator/page/update_status/'.$p->id)}}"><span class="label label-default">Drafted</span></a>
                      @endif
                    </td>
                    <td>{{ucwords($p->created_at)}}</td>
                    <td><a href="{{url('administrator/page/edit/'.$p->id)}}"><i class="fa fa-pencil"></i> Edit</a> 
					@if(Auth::user()->role == "admin")|
           <a href="{{url('administrator/page/delete/'.$p->id)}}">
					 	<i class="fa fa-trash-o"></i> Delete
					 </a>
          @endif
                     </td>
                  </tr>
                  @endforeach
                </tbody>
                
              </table>
             @if(Auth::user()->role == "admin") 
              <div class="form-group">
              		<a href="" id="select_all">Select All</a>
                	{{Form::submit('Delete Selected',array('class'=>'btn btn-success'))}}
                  <a href="{{url('administrator/page/create')}}" class="btn btn-success">New Page</a>
                </div>
            @endif
                {{Form::close()}}
		</div>
	</div>
	<!-- END ROW -->
	@stop
@include('administrator.footer')
@stop