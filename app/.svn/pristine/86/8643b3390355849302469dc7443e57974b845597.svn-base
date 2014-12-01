  @section('footer')
    </div><!-- /#wrapper -->

    <!-- JavaScript -->
    
    @if(Request::segment(3) == "create" || Request::segment(3) == "edit")
    <script src="{{asset('_assets/backend/js/page.js')}}"></script>
    @endif
    @if(Request::segment(1)=="inbox")
    <script src="{{asset('_assets/backend/js/message.js')}}"></script>
    @endif
    @if(Request::segment(2)=="category")
     <script src="{{asset('_assets/backend/js/category.js')}}"></script>
    @endif
    <script src="{{asset('_assets/backend/js/form.js')}}"></script>
    <script src="{{asset('_assets/backend/js/jquery-ui.min.js')}}"></script>
    <script src="{{asset('_assets/backend/js/menu.js')}}"></script>
    @if(Request::path() == "administrator/slider")
    <script src="{{asset('_assets/backend/js/slider.js')}}"></script>
    @endif
    @if(Request::path() == "administrator/media")
    <script src="{{asset('_assets/backend/js/attach-post.js')}}"></script>
    @endif
   <script>
   $('.input-group.date #date-post').datepicker({dateFormat:"yy-mm-dd"});
   </script>
   @if(Request::segment(3) == "add_image" || Request::segment(2) == "media" || Request::segment(2) == "import")
   <script src="{{asset('_assets/backend/js/uploadify/jquery.uploadify.min.js')}}"></script>
   <script src="{{asset('_assets/backend/js/gallery.js')}}"></script>
   @endif
    {{LeanSlider::js()}}
    @if(Request::segment(3) == "edit" || Request::segment(3) == "create")
    <script src="{{asset('_assets/backend/js/image_attachment.js')}}"></script>
    @endif
    <!-- THIS SCRIPT WILL NOT FIRE WHEN ADD_IMAGE IS PRESENT -->
    @if(Request::segment(3) !="add_image" && Request::segment(2) !="media" && Request::segment(2) !="hotel" && Request::segment(2) !="import" )
    <!-- Page Specific Plugins  -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="{{asset('_assets/backend/js/morris/chart-data-morris.js')}}"></script>
   <script src="{{asset('_assets/backend/js/morris/morris-0.4.3.min.js')}}"></script>
    <script src="{{asset('_assets/backend/js/tablesorter/jquery.tablesorter.js')}}"></script>
    <script src="{{asset('_assets/backend/js/tablesorter/tables.js')}}"></script>

  <script>
   
Morris.Donut({
  element: 'morris-chart-donut',
  data: [
    {label: "Referral", value: 5.7},
    {label: "Direct", value: 8.3},
    {label: "Social", value: 12.8},
    {label: "Organic", value: 36.2}
  ],
  formatter: function (y) { return y + "%" ;}
});
  </script>
  @endif
  <!-- START LIGHT BOX -->
 @if(Request::segment(2) == "hotel")
  <script src="{{asset('_plugin/lightbox/js/lightbox.min.js')}}"></script>
  @endif
 <!-- END LIGHT BOX -->
 <!-- UPLOADIFY SCRIPT -->
 @if(Request::segment(3)=="add_image")
  <script type="text/javascript">
    <?php $timestamp = time();?>
    $(function() {
      $('#file_upload').uploadify({
        'formData'     : {
          'timestamp' : '<?php echo $timestamp;?>',
          'token'     : '<?php echo md5('unique_salt' . $timestamp);?>',
          'slider_id' : $("#slider_id").val()
        },
        'swf'      : '<?php echo asset("_assets/backend/js/uploadify/uploadify.swf");?>',
        'uploader' : '<?php echo url("administrator/image/upload");?>',
        'fileTypeDesc' : 'Image Files',
        'fileTypeExts' : '*.gif; *.jpg; *.png',
        'onQueueComplete' : function(queueData){
              window.location.reload();
        },
        'onUploadError' : function(file, errorCode, errorMsg, errorString) {
            alert('The file ' + file.name + ' could not be uploaded: ' + errorMsg);
        }
      });
    });
  </script>
  @endif
  <!-- END UPLOADIFY SCRIPT MEDIA-->

   <!-- UPLOADIFY IMPORT SCRIPT -->
 @if(Request::segment(2)=="import")
  <script type="text/javascript">
    <?php $timestamp = time();?>
    $(function() {
      $('#file_upload').uploadify({
        'formData'     : {
          'timestamp' : '<?php echo $timestamp;?>',
          'token'     : '<?php echo md5('unique_salt' . $timestamp);?>'
        },
        'swf'      : '<?php echo asset("_assets/backend/js/uploadify/uploadify.swf");?>',
        'uploader' : '<?php echo url("import/upload");?>',
        'fileTypeDesc' : 'Excel File',
        'fileTypeExts' : '*.xls; *.xlsx',
        'onQueueComplete' : function(queueData){
              window.location.reload();
        },
        'onUploadError' : function(file, errorCode, errorMsg, errorString) {
            alert('The file ' + file.name + ' could not be uploaded: ' + errorMsg);
        }
      });
    });
  </script>
  @endif
  <!-- END UPLOADIFY IMPORT SCRIPT-->

 <!-- START DATE PICKERS FOR  MORRIS-->
<script>
  $("#startDate,#endDate").datepicker({dateFormat:'yy-mm-dd',maxDate: "0D"});
</script>
<!-- END  DATE PICKERS FOR  MORRIS-->
  @if(Request::segment(2)=="media")
  <!-- UPLOADIFY SCRIPT -->
  <script type="text/javascript">
    <?php $timestamp = time();?>
    $(".th:nth-of-type(4n+0)").append("<div class='clearfix'></div>");
    $(function() {
      $('#file_upload').uploadify({
        'formData'     : {
          'timestamp' : '<?php echo $timestamp;?>',
          'token'     : '<?php echo md5('unique_salt' . $timestamp);?>'
        },
        'swf'      : '<?php echo asset("_assets/backend/js/uploadify/uploadify.swf");?>',
        'uploader' : '<?php echo url("administrator/image/upload");?>',
        'fileTypeDesc' : 'Image Files',
        'fileTypeExts' : '*.gif; *.jpg; *.png',
        'onQueueComplete' : function(queueData){
              window.location.reload();
        },
        'onUploadError' : function(file, errorCode, errorMsg, errorString) {
            alert('The file ' + file.name + ' could not be uploaded: ' + errorMsg);
        }
      });
    });
  </script>
  <!-- END UPLOADIFY SCRIPT MEDIA-->
  @endif
  
  {{LeanSlider::script()}}
  @if(Request::segment(2) == "hotel")
    {{Map::js()}}
    {{Map::setMap($hotel->latitude,$hotel->longitude,15,$hotel->hotel_name)}}
  @endif

  @if(Request::path() == "administrator/import")
     <script src="{{asset('assets/backend/js/find_hotel.js')}}" type="text/javascript"></script>
  @endif
  </body>
</html>
  @stop
@stop