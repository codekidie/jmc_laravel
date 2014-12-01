@extends('administrator.master')
@include('administrator.header')
	@section('page-content')
	<!-- START ROW -->
  {{Form::open(array('url'=>'administrator/category/save','id'=>'categoryFrm'))}}
  <!-- {{Form::open(array('url'=>'sandbox/submit'))}} -->
	<div class="row">
    <div class="col-lg-12">
            <h1>Categories</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class="active"><i class="fa fa-archive"></i> Categories</li>
            </ol>
            
          </div>
		<div class="col-lg-5">
			{{Session::get('message')}}
      <div class="form-group" id="d_name">
        <h3>Add New Category</h3>
        {{$errors->first('name')}}
        {{Form::text('name','',array('class'=>'form-control',
                                      'placeholder'=>'Enter Title Here','id'=>'name'))}}
      </div>
      <div class="form-group" id="d_slug">
        {{$errors->first('slug')}}
         {{Form::text('slug','',array('class'=>'form-control',
                                      'placeholder'=>'Slug Here','id'=>'slug'))}}
         <p class="help-block"><em>Slug is to generate friendly url</em></p>
      </div>
      <div class="form-group"  id="d_description">
        {{$errors->first('description')}}
        {{Form::textarea('description','',array('class'=>'form-control','id'=>'description'))}}
        <hr>
        @if(Auth::user()->role !="admin")
        <span class="label label-danger">You must have an admin privilege to add category</span><br><br>@endif
      <input type="submit" value="Add Category" name="add_category" class="btn btn-primary"
      @if(Auth::user()->role !="admin") disabled @endif
      >
      </div>
      
	  </div>
    <!-- START COLUMN 2 -->
    <div class="col-lg-7">
        <h3>Recent Categories</h3>
      <table class="table table-bordered table-hover table-striped">
                <thead>
                  <tr>
                    <th class="header">Name </th>
                    <th class="header">Slug </th>
                    <th class="header">Description </th>
                    <th class="header"></th>
                  </tr>
                </thead>
                <tbody id="seedCategory">
                  <tr>
                    <td>Loading...</td>
                    <td>Loading...</td>
                    <td>Loading...</td>
                    <td>Loading...</td>
                  </tr>
                </tbody>
      </table>
    <!-- START EDIT FORM -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="category-title">Modal title</h4>
          </div>
          <div class="modal-body" id="edit-category-body">
            <div id="message"></div>
            <form id="updateCategory">
              <input type="hidden" name="cat_id" id="cat_id" value=""> 
                <div class="form-group">
                  <label for="">Category Name</label>
                    <input type="text" name="u_name" value="" id="u_name" class="form-control">
                </div>
                <div class="form-group">
                    <input type="text" name="u_slug" value="" id="u_slug" class="form-control">
                </div>
                <div class="form-group">
                    <textarea name="" id="u_description" cols="30" rows="10" class="form-control"></textarea>
                </div>
            
          
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <input id="update_category" type="button" class="btn btn-primary" value="Save changes">
          </div>
          </form>
        </div>
      </div>
    </div>
    <!-- END EDIT FORM -->
    </div>
    <!-- END COLUMN 2 -->
  </div>
	<!-- END ROW -->
  {{Form::close()}}
	@stop
@include('administrator.footer')
@stop