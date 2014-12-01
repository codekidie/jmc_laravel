<?php
class Skin{
	static $slug = 'top_menu';
    static $dir = '_assets/frontend/';
	public static function stylesheets(){
        $link = '<link rel="stylesheet" href="'.asset(self::$dir.'css/bootstrap.css').'">';
        $link .='<link rel="stylesheet" href="'.asset(self::$dir.'css/bootstrap-responsive.css').'">';
        $link .='<link rel="stylesheet" href="'.asset(self::$dir.'css/overwrite.css').'">';
        $link .='<link rel="stylesheet" href="'.asset(self::$dir.'css/prettyPhoto.css').'">';
        $link .='<link rel="stylesheet" href="'.asset(self::$dir.'css/style.css').'">';
        $link .='<link rel="stylesheet" href="'.asset(self::$dir.'_plugin/lightbox/css/lightbox.css').'">';
        //Theme Skin
        $link .='<link rel="stylesheet" href="'.asset(self::$dir.'skin/default.css').'">';
        return $link;
    }
    /*Register your fonts here*/
    public static function fonts(){
        $font = "<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600,700,300' rel='stylesheet' type='text/css'>";
        return $font;
    }

    public static function iecss(){
  ?>
        <!--[if lt IE 9]>
        <link rel="stylesheet" type="text/css" href="css/fallback.css" />
        <![endif]-->

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
<?php
    }//end of iecss
    public static function favicon(){

    $fav  = '<link rel="apple-touch-icon-precomposed" sizes="144x144" href="'.asset(self::$dir.'ico/apple-touch-icon-144-precomposed.png').'">';
    $fav .= '<link rel="apple-touch-icon-precomposed" sizes="114x114" href="'.asset(self::$dir.'ico/apple-touch-icon-114-precomposed.png').'">';
    $fav .= '<link rel="apple-touch-icon-precomposed" sizes="72x72" href="'.asset(self::$dir.'ico/apple-touch-icon-72-precomposed.png').'">';
    $fav .= '<link rel="apple-touch-icon-precomposed" href="'.asset(self::$dir.'ico/apple-touch-icon-57-precomposed.png').'">';
    $fav .= '<link rel="shortcut icon" href="ico/favicon.png">';
    return $fav;

    }
    public static function js(){
       $js = '<script src="'.asset(self::$dir."js/jquery.js").'"></script>';
       $js .= '<script src="'.asset(self::$dir."js/html5shiv.js").'"></script>';
       $js .= '<script src="'.asset(self::$dir."js/jquery.easing.1.3.js").'"></script>';
       $js .='<script src="'.asset(self::$dir."js/bootstrap.js").'"></script>';

        //Grid Rotator jquery.gridrotator.js
        $js .='<script src="'.asset(self::$dir."js/gridrotator/modernizr.custom.26633.js").'"></script>';
        $js .='<script src="'.asset(self::$dir."js/gridrotator/jquery.gridrotator.js").'"></script>';
        $js .='<script src="'.asset(self::$dir."js/gridrotator/setting.js").'"></script>';
        //isotope
        $js .='<script src="'.asset(self::$dir."js/filter/jquery.isotope.min.js").'"></script>';
        $js .='<script src="'.asset(self::$dir."js/filter/setting.js").'"></script>';
        //pretty photo
        $js .='<script src="'.asset(self::$dir."js/prettyPhoto/jquery.prettyPhoto.js").'"></script>';
        $js .='<script src="'.asset(self::$dir."js/prettyPhoto/setting.js").'"></script>';
        //top top
        $js .='<script src="'.asset(self::$dir."js/totop/jquery.ui.totop.js").'"></script>';
        $js .='<script src="'.asset(self::$dir."js/totop/setting.js").'"></script>';

        //custom js
        $js .='<script src="'.asset(self::$dir."js/custom.js").'"></script>';
        $js .='<script src="'.asset(self::$dir."js/login.js").'"></script>';

        
        return $js;
    }

    /* Displaying the menu 
      #Default Usage 
           -> On your template call this helper method
             Helpers::menu().' - the default menu is top_menu.';

      #Custom Menu
           -> On your template you must instantiate or call the static
              variable $slug.
              <?php Helpers::$slug = 'custom_menu';?>
              Helpers::menu().'';
    */
    public static function menu(){
        $m = Menu::with(array('pages'=>function($query){
            $query->where('slug_keyword',self::$slug);
            $query->where('status',1);
            $query->orWhere('menu_id',null);
            $query->orderBy('menu_order');
        }))->get();
        foreach($m as $p){
            foreach($p->pages as $page){
                if(Request::segment(2) == $page->slug){
                    $li = '<li class="current">';
                }else{
                    $li = '<li>';
                }
                echo $li.'<a href="'.url('page/'.$page->slug).'">'.ucwords($page->title).'</a></li>';
            }
        }
    }

    public static function contact_form($id){
        $page = Page::find($id);
        if($page->form_active == 1):
            $c = '<div class="form-group">';
            $c .= '<div class="alert-box success" style="display:none">Thank you! We will get back to you shortly.<a href="" class="close">×</a></div>';
            $c .= '<form id="send-message">';
            $c .= '<label for="">First Name</label>';
            $c .= '<input type="text" id="firstname" name="firstname" placeholder="John " required>';
            $c .= '<label for="">Last Name</label>';
            $c .= '<input type="text" id="lastname" name="lastname" placeholder="Doe" required>';
            $c .= '<label for="">Email</label>';
            $c .= '<input type="email" id="email" name="email" placeholder="johndoe@yahoo.com" required>';
            $c .= '<label for="">Subject</label>';
            $c .= '<input type="text" id="subject" name="subject" required placeholder="Subject: How can I book with your hotels?">';
            $c .= '<label for="">Message:</label>';
            $c .= '<textarea name="message" id="message" cols="30" rows="50" required></textarea>';
            $c .= '<br><input type="submit" value="Send" class="success button">';
            $c .= '</form>';
            $c .=  '</div>';
            return $c;
        endif;
    }

    public static function starRating($average){
        $star = "";
        switch($average){
            case $average == 1:
                echo $star = '<img src="'.asset(self::$dir.'/images/star.png').'"> ';
                for($x=0;$x<4;$x++){
                    echo $star = '<img src="'.asset(self::$dir.'/images/star-x.png').'">';
                }
            break;
            case $average == 2:
                for($i=0;$i<2;$i++){
                    echo $star = '<img src="'.asset(self::$dir.'/images/star.png').'">';
                }
                for($x=0;$x<3;$x++){
                    echo $star = '<img src="'.asset(self::$dir.'/images/star-x.png').'">';
                }
            break;
            case $average == 3 || $average <= 7:
              for($i=0;$i<3;$i++){
                    echo $star = '<img src="'.asset(self::$dir.'/images/star.png').'">';
                }
              for($x=0;$x<2;$x++){
                    echo $star = '<img src="'.asset(self::$dir.'/images/star-x.png').'">';
              }
            break;
            case $average == 8 || $average <= 9:
               for($i=0;$i<4;$i++){
                    echo $star = '<img src="'.asset(self::$dir.'/images/star.png').'">';
                }
                    echo $star = '<img src="'.asset(self::$dir.'/images/star-x.png').'">';
            break;
            case $average == 10:
                for($i=0;$i<5;$i++){
                    echo $star = '<img src="'.asset(self::$dir.'/images/star.png').'">';
                }
            break;
            default:
                echo "No Ratings";
        }
	}
}
use Illuminate\Support\Facades\Facade;
    
    class Skins extends Facade
    {
        protected static function getFacadeAccessor() { 
            return App::make('skin');  
        }
    }

use Illuminate\Support\ServiceProvider;
    
    class SkinServiceProvider extends ServiceProvider 
    {
        public function register() {
            App::bind('skin', function(){
                return new Skin;
            });
        }
    }
?>