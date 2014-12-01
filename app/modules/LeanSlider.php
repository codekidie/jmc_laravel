<?php
Class LeanSlider{
    static $dir = '_assets/';
    public static function assets(){
        $link = '<link rel="stylesheet" href="'.asset(self::$dir."frontend/plugins/lean-slider/lean-slider.css").'">';
        $link .= '<link rel="stylesheet" href="'.asset(self::$dir."frontend/plugins/lean-slider/skin.css").'">';
        return $link;
    }
    public static function js(){
        $js = '<script src="'.asset(self::$dir."frontend/plugins/lean-slider/lean-slider.js").'"></script>';
        return $js;
    }
	public static function show($slug=null){
        if(is_integer($slug)){
            $slider = Slider::find($slug);
        }else{

            if($slug != null){
            $slider_slug = Slider::where('slug',$slug)->get();
            }else{
                $slider_slug = Slider::where('slug','front_page_slider')->get();
            }
            $slider = Slider::find($slider_slug[0]->id);
        }
        
        
		$s = '<div class="slider-wrapper ">
                    <div id="slider" class="">';
        foreach($slider->images as $image):
        $s .=           '<div class="slide">
                            <img src="'.asset($image->filename).'" alt="" />
                        </div>';
        endforeach;
        $s .=       '</div>';
        $s .=        '<div id="slider-direction-nav"></div>';
        $s .=        '<div id="slider-control-nav"></div></div>';
        return $s;
	}

    public static function script(){
?>
    <script type="text/javascript">
    $(document).ready(function() {
        var slider = $('#slider').leanSlider({
            directionNav: '#slider-direction-nav',
            controlNav: '#slider-control-nav'
        });
    });
 </script>
<?php
} //end script()
	 /*
	   Upload a new image
	   Do not call this on your view, this method is
	   for controller only
	 */
	public static function uploadImage(){
		
	}
}
use Illuminate\Support\Facades\Facade;
    
    class LeanSliders extends Facade
    {
        protected static function getFacadeAccessor() { 
            return App::make('leanslider');  
        }
    }

use Illuminate\Support\ServiceProvider;
    
    class SliderServiceProvider extends ServiceProvider 
    {
        public function register() {
            App::bind('leanslider', function(){
                return new LeanSlider;
            });
        }
    }
?>