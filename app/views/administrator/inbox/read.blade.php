@extends('administrator.master')
@include('administrator.header')
@section('page-content')
	<div class="row">
		<div id="inbox" class="col-lg-12">
			<!-- START PANEL -->
			<div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title">
                	<h4>From: <em>{{$m->email}}: {{ucwords($m->firstname)}} {{ucwords($m->lastname)}}</em></h4></h3>
              </div>
              <div class="panel-body">
                <h4>Message:</h4>
				<p>{{$m->message}}</p>
              </div>
              <div class="panel-footer">
              	<a href="{{url('inbox/delete/'.$m->id)}}" class="btn btn-warning">
				<i class="fa fa-trash-o"></i> Delete</a> 
				<a  data-toggle="modal" data-target="#replyModal" href="" id="reply" class="btn btn-success"><i class="fa fa-reply"></i> Reply to this message</a>
				<a href="{{url('inbox')}}" id="bck-inbox" class="btn btn-primary"><i class="fa fa-envelop-o"></i> Back to Inbox</a>
              </div>
            </div>
            <!-- END PANEL -->
	</div>
	<!-- Button trigger modal -->

	<!-- START Modal -->
		<div class="modal fade" id="replyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">
						Repy to {{$m->email}}
					</h4>
				</div>
					<div class="modal-body">
					<!-- START REPLY FORM -->
					{{Form::open(array("url"=>"/administrator","id"=>"frm-reply"))}}
					<div class="form-group">
						{{Form::text('subject','Re:'.$m->subject,array('class'=>'form-control'))}}
					</div>
					<div class="form-group">
						{{Form::textarea('message','',array('class'=>'form-control'))}}
					</div>
					{{Form::close()}}
						
					</form>
					<script>
					        tinymce.init({selector:'textarea',plugins:['code']});
					</script>
					<!-- END REPLY FORM -->
					</div>
					<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button id="submit-reply"  type="button" class="btn btn-primary">Submit Reply</button>
				</div>
			</div>
		</div>
	</div>
	<!-- END MODAL -->
</div>
<!-- END ROW -->
@stop
@include('administrator.footer')
@stop