<?php
class BackendSkin{

    static $dir = '_assets/backend/';
	public static function stylesheets(){

	  $link = '<link href="'.asset(self::$dir.'css/bootstrap.css').'" rel="stylesheet">'	;
    $link .=   '<link rel="stylesheet" href="'.asset(self::$dir.'css/sb-admin.css').'" rel="stylesheet">';
    $link .=   '<link rel="stylesheet" href="'.asset(self::$dir.'css/icon-set.css').'" rel="stylesheet">';
    $link .=  '<link rel="stylesheet" href="'.asset(self::$dir.'css/font-awesome.css').'">';

	  $link .=  '<link rel="stylesheet" href="'.asset(self::$dir.'font-awesome/css/font-awesome.min.css').'">';
	  $link .=  '<link rel="stylesheet" href="'.asset(self::$dir.'js/themes/base/jquery.ui.all.css').'">';
	  $link .=  '<link href="'.asset('_plugin/lightbox/css/lightbox.css').'" rel="stylesheet" />';
	  $link .=  '<link rel="stylesheet" type="text/css" href="'.asset(self::$dir.'js/uploadify/uploadify.css').'">';
    $link .=  '<link rel="stylesheet" href="'.asset('_assets/backend/js/morris/morris-0.4.3.min.css').'">';

       
      return $link;
    }
    public static function js(){
      $js = '<script src="'.asset(self::$dir.'js/tinymce/tinymce.min.js').'"></script>';
      $js .='<script src="'.asset('_assets/backend/js/jquery.js').'"></script>';
      $js .='<script src="'.asset('_assets/backend/js/bootstrap.js').'"></script>';
      $js .='<script src="'.asset('_assets/backend/js/user.js').'"></script>';
      $js .='<script src="'.asset('_assets/backend/js/message_label.js').'"></script>';
      $js .='<script src="'.asset('_assets/backend/js/post.js').'"></script>';



       return $js;
    }
 
}
use Illuminate\Support\Facades\Facade;
      
    class BackendSkins extends Facade
    {
        protected static function getFacadeAccessor() { 
            return App::make('backendskin');  
        }
    }

use Illuminate\Support\ServiceProvider;
    
    class BackendSkinServiceProvider extends ServiceProvider 
    {
        public function register() {
            App::bind('backendskin', function(){
                return new BackendSkin;
            });
        }
    }
?>