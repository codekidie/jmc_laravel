@extends('administrator.master')
@include('administrator.header')
  @section('page-content')
  <div class="row">
    <div class="col-lg-12">{{Session::get('message')}}</div>
  	<div class="col-lg-4">
  		<div class="form-group">
  			{{$errors->first('xls')}}
    <input id="file_upload" name="excel" type="file" multiple="true">
  		</div>
  	</div>

     <!-- START IMPORT VIEWS -->
      <div class="col-lg-12">
        <hr>
        <div class="col-lg-6">
          <h2>Agoda Hotels  <span class="label label-primary">{{count($total_records)}}</span></h2>
        </div>
        <div class="col-lg-6">
          
          <div class="form-group input-group">
                <input type="text" class="form-control" id="keyword-value">
                <span class="input-group-btn">
                  <button id="search_hotel" class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                </span>
          </div>
       
        </div>
        <div id="hotel-imports">
          <!-- START TABLE -->
          <div class="table-responsive">
              <table class="table table-hover table-striped tablesorter">
                <thead>
                  <tr>
                    <th class="header">Hotel Name <i class="fa fa-sort"></i></th>
                    <th class="header">Country <i class="fa fa-sort"></i></th>
                    <th class="header">City <i class="fa fa-sort"></i></th>
                    <th class="header">Zip Code <i class="fa fa-sort"></i></th>
                    <th class="header">Number of Rooms <i class="fa fa-sort"></i></th>
                  </tr>
                </thead>
                <tbody id="records">
                  @foreach($records as $hotel)
                  <tr>
                    <td><a href="{{url('administrator/hotel/'.$hotel->id)}}" target="_blank">{{$hotel->hotel_name}}</a></td>
                    <td> @if($hotel->country !="")
                         {{$hotel->country}}
                         @else
                          <span class="label label-success">not specified</span>
                         @endif
                    </td>
                    <td>
                      @if($hotel->city !=null || $hotel->city !="")
                         {{$hotel->city}}
                         @else
                          <span class="label label-success">not specified</span>
                         @endif
                    </td>
                    <td>
                      @if($hotel->zipcode !=0 || $hotel->zipcode !="")
                      {{$hotel->zipcode}}
                      @else
                      <span class="label label-success">not specified</span>
                      @endif
                    </td>
                    <td> @if($hotel->numberrooms !=null || $hotel->zipcode !="")
                      {{$hotel->numberrooms}}
                        @else
                        <span class="label label-success">not specified</span>
                        @endif
                    </td>
                 
                  </tr>
                  @endforeach
                </tbody>
              </table>
              {{$records->links()}}
            </div>
          <!-- END TABLE -->
        </div>
      </div>
      <!-- END IMPORT VIEWS -->
  </div>
  @stop
@include('administrator.footer')  
@stop