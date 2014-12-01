<?php
class Map{
	public static function js(){
		return '<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDPONYlRMX7pd_mu1mZlzJ_eDp9CodBn6M&sensor=false"></script>';
	}

  public static function setMap($latitude,$longitude,$zoom,$title="Map"){
  	?>
  	<script>
function initialize() {
  var myLatlng = new google.maps.LatLng(<?php echo $latitude;?> , <?php echo $longitude;?>);
  var mapOptions = {
    zoom: <?php echo $zoom;?>,
    center: myLatlng
  }
  var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: "<?php echo $title;?>"
  });
}

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
<?php  	
  }
}

use Illuminate\Support\Facades\Facade;
    
    class Maps extends Facade
    {
        protected static function getFacadeAccessor() { 
            return App::make('map');  
        }
    }

use Illuminate\Support\ServiceProvider;
    
    class GoogleMapServiceProvider extends ServiceProvider 
    {
        public function register() {
            App::bind('map', function(){
                return new Map;
            });
        }
    }

?>