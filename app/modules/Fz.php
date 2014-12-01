<?php

Class Fz{
	public static function row(){
		return '<div class="row">';
	}

	public static function end(){
		return '</div>';
	}
// Columns
	public static function col12($id=null,$class=null){
		return '<div class="large-12 columns '.$class.'" id="'.$id.'">';
	}

	public static function col11($id=null,$class=null){
		return '<div class="large-11 columns '.$class.'" id="'.$id.'">';
	}
	public static function col10($id=null,$class=null){
		return '<div class="large-10 columns '.$class.'" id="'.$id.'">';
	}
	public static function col9($id=null,$class=null){
		return '<div class="large-9 columns '.$class.'" id="'.$id.'">';
	}
	public static function col8($id=null,$class=null){
		return '<div class="large-8 columns '.$class.'" id="'.$id.'">';
	}
	public static function col7($id=null,$class=null){
		return '<div class="large-7 columns '.$class.'" id="'.$id.'">';
	}
	public static function col6($id=null,$class=null){
		return '<div class="large-6 columns '.$class.'" id="'.$id.'">';
	}
	public static function col5($id=null,$class=null){
		return '<div class="large-5 columns '.$class.'" id="'.$id.'">';
	}
	public static function col4($id=null,$class=null){
		return '<div class="large-4 columns '.$class.'" id="'.$id.'">';
	}
	public static function col3($id=null,$class=null){
		return '<div class="large-3 columns '.$class.'" id="'.$id.'">';
	}
	public static function col2($id=null,$class=null){
		return '<div class="large-2 columns '.$class.'" id="'.$id.'">';
	}
	public static function col1($id,$class){
		return '<div class="large-1 columns '.$class.'" id="'.$id.'">';
	}

	/*Small*/
	public static function col12s($id=null,$class=null){
		return '<div class="small-12 columns '.$class.'" id="'.$id.'">';
	}

	public static function col11s($id=null,$class=null){
		return '<div class="small-11 columns '.$class.'" id="'.$id.'">';
	}
	public static function col10s($id=null,$class=null){
		return '<div class="small-10 columns '.$class.'" id="'.$id.'">';
	}
	public static function col9s($id=null,$class=null){
		return '<div class="small-9 columns '.$class.'" id="'.$id.'">';
	}
	public static function col8s($id=null,$class=null){
		return '<div class="small-8 columns '.$class.'" id="'.$id.'">';
	}
	public static function col7s($id=null,$class=null){
		return '<div class="small-7 columns '.$class.'" id="'.$id.'">';
	}
	public static function col6s($id=null,$class=null){
		return '<div class="small-6 columns '.$class.'" id="'.$id.'">';
	}
	public static function col5s($id=null,$class=null){
		return '<div class="small-5 columns '.$class.'" id="'.$id.'">';
	}
	public static function col4s($id=null,$class=null){
		return '<div class="small-4 columns '.$class.'" id="'.$id.'">';
	}
	public static function col3s($id=null,$class=null){
		return '<div class="small-3 columns '.$class.'" id="'.$id.'">';
	}
	public static function col2s($id=null,$class=null){
		return '<div class="small-2 columns '.$class.'" id="'.$id.'">';
	}
	public static function col1s($id=null,$class=null){
		return '<div class="small-1 columns '.$class.'" id="'.$id.'">';
	}


}

use Illuminate\Support\Facades\Facade;
    
    class Fzs extends Facade
    {
        protected static function getFacadeAccessor() { 
            return App::make('fz');  
        }
    }

use Illuminate\Support\ServiceProvider;
    
    class FzServiceProvider extends ServiceProvider 
    {
        public function register() {
            App::bind('fz', function(){
                return new Fz;
            });
        }
    }
?>