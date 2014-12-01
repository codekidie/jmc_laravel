<?php
Class GetWidget{
    public static function put($slug){
?>
<img src="<?php echo Widget::get($slug)->icon;?>" class="aligncenter" alt="" />
    <h5><?php echo Widget::get($slug)->title;?></h5>
    <p>
        <?php echo Widget::get($slug)->text_html;?>
    </p>
<?php
    }//function get()  
}
use Illuminate\Support\Facades\Facade;
    
    class GetWidgets extends Facade
    {
        protected static function getFacadeAccessor() { 
            return App::make('getwidget');  
        }
    }

use Illuminate\Support\ServiceProvider;
    
    class GetWidgetProvider extends ServiceProvider 
    {
        public function register() {
            App::bind('getwidget', function(){
                return new GetWidget;
            });
        }
    }
?>