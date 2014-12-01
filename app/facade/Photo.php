<?php
 class Photo{
  
  public static function getImageSource($id){
      $image = Image::find($id);
      return '<img src="'.asset($image->filename).'" width="220">';
  }
 	public static function selectImageNoAttachments(){
      $images = Image::all();
      $result = array();
      foreach($images as $image){
        $image_id =  Image::find($image->id);
        $result[] = $image_id->sliders;
      }
      $image_result_id = array();
      foreach($result as $s){
        foreach($s as $slider){
          $image_result_id[] = $slider->pivot->image_id;
        }
      }
      $image_query = Image::whereNotIn('id',$image_result_id)->get();
      return $image_query;
  }
 }
 use Illuminate\Support\Facades\Facade;
    
    class Photos extends Facade
    {
        protected static function getFacadeAccessor() { 
            return App::make('photo');  
        }
    }

use Illuminate\Support\ServiceProvider;
    
    class PhotoServiceProvider extends ServiceProvider 
    {
        public function register() {
            App::bind('photo', function(){
                return new Photo;
            });
        }
    }
?>