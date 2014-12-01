@extends('administrator.master')
@include('administrator.header')
	@section('page-content')
	<!-- START ROW -->
  {{Form::open(array('url'=>'administrator/menu/save','id'=>'menuFrm'))}}
  <!-- {{Form::open(array('url'=>'sandbox/submit'))}} -->
	<div class="row">
    <div class="col-lg-12">
            <h1>Categories</h1>
            <ol class="breadcrumb">
              <li><a href="{{url('administrator')}}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class="active"><i class="fa fa-bars"></i> Menu</li>
            </ol>
            
          </div>
		<div class="col-lg-5">
      <div class="panel panel-default">
              <div class="panel-heading"><h4>Add New Menu</h4></div>
              <div class="panel-body">
               {{Session::get('message')}}
      <div class="form-group" id="d_name">
        {{$errors->first('name')}}
        {{Form::text('menu_name','',array('class'=>'form-control',
                                      'placeholder'=>'Enter menu name here....','id'=>'menu_name'))}}
      </div>
      @if(Auth::user()->role !="admin")
      <span class="label label-danger">You don't have permission to add new item</span><br><br>
      @endif
      <div class="form-group"  id="d_description">
      <input type="submit" name="add_category" class="btn btn-primary" value="Add Menu" @if(Auth::user()->role !="admin") disabled @endif>
      </div>
              </div>
            </div>
	  </div>
      {{Form::close()}}
    <!-- START COLUMN 2 -->
    <div class="col-lg-7">

      <div class="panel panel-default">
              <div class="panel-heading"><h4>Created Menus</h4></div>
              <div class="panel-body">
                <!-- START COLLAPSE -->
                
                  <div class="panel-group" id="accordion">
                @foreach($menus as $menu)
                {{Form::open(array('url'=>'administrator/menu/attach'))}}
                <div class="panel panel-default" id="{{$menu->slug}}">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapse{{$menu->slug}}">
                        {{ucwords($menu->name)}}
                      </a>
                    </h4>
                  </div>
                  <div id="collapse{{$menu->slug}}" class="panel-collapse collapse">
                    <div class="panel-body">
                      <div class="form-group">
                        <input type="hidden" name="menu_id" value="{{$menu->id}}">
                        <label>Pages</label>
                      @foreach($pages as $page)
                <div class="checkbox">
                  <label>
                    <input name="pages[]" type="checkbox" value="{{$page->id}}">
                    {{ucwords($page->title)}}
                  </label>

                </div>

                      @endforeach
                    </div> 
                    <!-- End form-checkbox -->
                    <div class="form-group">
                    <form action="{{url('administrator/menu/attach')}}" method="post">
                      <label for="">Pages Attached to {{ucwords($menu->name)}}</label>
                      <?php $m = Menu::find($menu->id); ?>
                      <?php foreach($m->pages as $p):?>
                        <p><input name="order[]" type="text" size="2" value="{{$p->pivot->menu_order}}"> {{$p->title}}</p>
                        <input type="hidden" name="page_id[]" value="{{$p->id}}">
                         <input type="hidden" name="slug" value="{{$menu->slug}}">
                        <input type="hidden" name="menu-id" value="{{$m->id}}">
                       
                      <?php endforeach;?>
                         <input type="submit" name="update-order" id="{{$menu->id}}" href="" class="page-btn btn btn-success {{$menu->slug}}" value="Sync Page Order">
                      </form>
                   
                   
                    </div>
                    
                     <hr>
                      <a id="{{$menu->id}}" href="" class="menu-btn btn btn-primary">Delete this menu</a>
                      <button id="{{$menu->id}}" href="" class="page-btn btn btn-success {{$menu->slug}}">Attach Pages</button>
                      
                    </div>
                  </div>
                </div>
                 {{Form::close()}}
                @endforeach
                 </div>
                
                <!-- END COLLAPSE -->
              </div>
            </div>
    <!-- END COLUMN 2 -->
  </div>

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
	<!-- END ROW -->

	@stop
@include('administrator.footer')
@stop