@extends('administrator.master')
@include('administrator.header')
@section('page-content')



<a href="{{url('administrator/establishments/create')}}" class="btn btn-info btn-sm pull-right">   <span class="glyphicon glyphicon-plus"></span> Create New Establishment</a>
  <br style="clear:both;">


<hr>

  @foreach($establishments as $e)

              <div class="col-lg-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            {{$e->name}}
                        </div>
                        <div class="panel-body">
                        <center>
                        <?php
                          if($e->logo == "")
                          {
                              $logo = "no.jpg";
                          }
                          elseif($e->logo != "")
                          {
                            $logo = $e->logo;
                          }
                          
                        ?>
                            {{HTML::image('_assets/establishments_logo/'.$logo, 'a picture', 
          array('class' => 'img-circle','style'=>'width:50px;height:50px;'))}}
                          </center>
                          <hr>
                            <p>Tagline : {{$e->tagline}}</p>
                            <p>Lisence Number :{{$e->license_number}}</p>
                            <p> Email : {{$e->email}}</p>
                            <p>Location : {{$e->location}}</p>
                            <p>Contact Number : {{$e->contact_number}}</p>
                            <p>Website : {{$e->website}}</p>
                            

                        </div>
                        <div class="panel-footer">
                            <p>Establishment ID : {{$e->identifier}}</p>

                            
                        </div>
                    </div>
                </div>
  @endforeach 

  <br style="clear:both;">
   {{$establishments->links()}}             
@stop
@include('administrator.footer')
@stop