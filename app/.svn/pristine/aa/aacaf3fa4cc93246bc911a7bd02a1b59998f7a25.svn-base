@extends('administrator.master')
@include('administrator.header')
@section('page-content')
	<div class="row">
    <div class="col-lg-12">
            <h1>Mailbox</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class="active"><i class="fa fa-envelope"></i> Inbox</li>
            </ol>
            
          </div>
		<div id="inbox" class="col-lg-12">
      <div id="status"></div>
      <div id="inbox-header">
        <h2></h2>
      <div id="inbox-links" style="display:none">
        <a href="" id="delete-all-read"><i class="fa fa-trash-o"></i> Delete All Read</a> | 
      <a href="" id="delete-all-unread"><i class="fa fa-trash-o"></i> Delete All Unread</a>
      </div>
      
      </div>
			<table class="table table-bordered table-hover tablesorter">
               
                <tbody id="messages">
                  <div class="progress progress-striped active">
                  <div class="progress-bar"  role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                    <span class="sr-only">45% Complete</span>
                  </div>
                </div>
                </tbody>
              </table>
		</div>
	</div>
@stop
@include('administrator.footer')
@stop