@extends('administrator.master')
@include('administrator.header')
@section('page-content')
	<div class="row">
		<div class="col-lg-12">
            <h1>Slider Module <small>Create new sliders</small></h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class="active"><i class="fa fa-film"></i> Sliders</li>
            </ol>
    </div>
          <!-- START JUMBOTRON -->
          <div class="col-lg-12">
            <a href="" id="slider-info"><i class="fa fa-question"></i> About Slider</a> &nbsp;
            <a href="" data-toggle="modal" data-target="#add-slider"><i class="fa fa-film"></i> Create New Slider</a>
          <div class="jumbotron hide-reveal">
                <h1>The Lean Slider</h1>
                <p>It is a simple jQuery image slider built on the principles of Progressive Enhancement. Unlike other sliders it does not provide any styling or fancy transition effects. It simply provides a javascript framework (slideshow functionality, navigation controls, callback functions etc.) for you to build a slider on top of....</p>
                <p><a href="http://dev7studios.com/lean-slider/" class="btn btn-primary btn-lg" target="_blank">Learn more</a></p>
          </div>
          </div>
           <!-- END JUMBOTRON -->
          <!-- ADD SLIDER Modal -->
          <div class="modal fade" id="add-slider" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                  <h4 class="modal-title" id="myModalLabel">Add Slider</h4>
                </div>
                <div class="modal-body" id="slider-body">
                  <div class="form-group" id="field_name">
                    <input type="text" name="name" id="name" class="form-control" placeholder="Slider Name">
                  </div>
                  <div class="form-group" id="field_description">
                    <label for="">Description</label>
                   <textarea name="description"cols="30" rows="10" id="description" class="form-control"></textarea>
                  </div>
                </div>
                <div class="modal-footer">

                  <button type="button" id="close_slider" class="btn btn-default" data-dismiss="modal">Close</button>
                  <input type="submit" name="save_slider" class="btn btn-primary" id="save_slider"></input>
                </div>
              </div>
            </div>
          </div>
          <!-- END ADD SLIDER MODAL -->
          <!-- START EDIT SLIDER MODAL -->
          <div class="modal fade" id="edit-slider" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                  <h4 class="modal-title" id="myModalLabel">Edit Slider</h4>
                </div>
                <div class="modal-body" id="slider-edit">
                  <div class="form-group" id="field_edit_name">
                    <input type="text" name="edited_name" id="edited_name" class="form-control" placeholder="Slider Name">
                  </div>
                  <div class="form-group" id="field_description">
                    <label for="">Description</label>
                   <textarea name="edited_description"cols="30" rows="10" id="edited_description" class="form-control"></textarea>
                  </div>
                </div>
                <div class="modal-footer">

                  <button type="button" id="close_slider" class="btn btn-default" data-dismiss="modal">Close</button>
                  <input type="submit" name="update_slider" class="btn btn-primary" id="update_slider" value="Update Slider"></input>
                </div>
              </div>
            </div>
          </div>
          <!-- END EDIT SLIDER MODAL -->
           <!-- START PANEL SLIDER FORM -->
          <div class="col-lg-12">
            <div class="table-responsive">
              <table class="table table-hover table-striped tablesorter">
                <thead>
                  <tr>
                    <th class="header">Slider ID <i class="fa fa-sort"></i></th>
                    <th class="header">Slider Name <i class="fa fa-sort"></i></th>
                    <th class="header">Slider Slug <i class="fa fa-sort"></i></th>
                    <th class="header">Actions</th>
                    </th>
                  </tr>
                </thead>
                <tbody id="slider-query">
                  <tr>
                    <td>Loading...</td>
                    <td>Loading...</td>
                    <td>Loading...</td>
                    <td>Loading...</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <!-- END PANEL SLIDER FORM -->
          </div>
          <!-- END ROW -->
           
@stop
@include('administrator.footer')
@stop