<?php
class BloodbankAdmin{

  static $dir = '_assets/bloodbank_admin/';
	public static function stylesheets(){

	  $link = '<link href="'.asset(self::$dir.'font-awesome/css/font-awesome.css').'" rel="stylesheet">'	;
    $link .=   '<link rel="stylesheet" href="'.asset(self::$dir.'css/bootstrap.css').'" rel="stylesheet">';

    $link .=   '<link rel="stylesheet" href="'.asset(self::$dir.'css/zabuto_calendar.css').'" rel="stylesheet">';
	  $link .=  '<link rel="stylesheet" href="'.asset(self::$dir.'css/js/gritter/css/jquery.gritter.css').'">';
	  $link .=  '<link rel="stylesheet" href="'.asset(self::$dir.'lineicons/style.css').'">';
	  $link .=  '<link href="'.asset(self::$dir.'css/style.css').'" rel="stylesheet" />';
	  $link .=  '<link rel="stylesheet" type="text/css" href="'.asset(self::$dir.'css/style-responsive.css').'">';
       
      return $link;
    }
    public static function js(){
      $js = '<script src="'.asset(self::$dir.'js/jquery.js').'"></script>';
      $js .='<script src="'.asset(self::$dir.'js/jquery-1.8.3.min.js').'"></script>';
      $js .='<script src="'.asset(self::$dir.'js/bootstrap.min.js').'"></script>';
      $js .='<script src="'.asset(self::$dir.'js/jquery.dcjqaccordion.2.7.js').'"></script>';
      $js .='<script src="'.asset(self::$dir.'js/jquery.scrollTo.min.js').'"></script>';
      $js .='<script src="'.asset(self::$dir.'js/jquery.nicescroll.js').'"></script>';
      $js .='<script src="'.asset(self::$dir.'js/jquery.sparkline.js').'"></script>';
      $js .='<script src="'.asset(self::$dir.'js/common-scripts.js').'"></script>';
      $js .='<script src="'.asset(self::$dir.'js/gritter/js/jquery.gritter.js').'"></script>';
      $js .='<script src="'.asset(self::$dir.'js/gritter-conf.js').'"></script>';
      $js .='<script src="'.asset(self::$dir.'js/sparkline-chart.js').'"></script>';
      $js .='<script src="'.asset(self::$dir.'js/zabuto_calendar.js').'"></script>';
      $js .='<script src="'.asset(self::$dir.'js/chart-master/Chart.js').'"></script>';

       return $js;
    }
 
}
use Illuminate\Support\Facades\Facade;
      
    class BloodbankAdmins extends Facade
    {
        protected static function getFacadeAccessor() { 
            return App::make('bloodbankadmin');  
        }
    }

use Illuminate\Support\ServiceProvider;
    
    class BloodbankServiceProvider extends ServiceProvider 
    {
        public function register() {
            App::bind('bloodbankadmin', function(){
                return new BloodbankAdmin;
            });
        }
    }
?>