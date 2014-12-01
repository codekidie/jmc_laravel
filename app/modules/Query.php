<?php
class Query{

    public static function getAllPages(){
        return Page::all();
    }

    public static function getAllPosts(){
        return Post::all();
    }

    public static function getAllPhotos(){
        return Image::all();
    }

    public static function getAllHotels(){
        return Hotel::all();
    }

   
    public static function getGuidelines()
    {
       return DB::table('guidelines')
                ->where('establishment_id', '=', Auth::user()->establishment_id)
                ->paginate(6);    
    } 

    public static function getAllEstablishments(){
        return Establishment::all();
    }

   
}
use Illuminate\Support\Facades\Facade;
    
    class Queries extends Facade
    {
        protected static function getFacadeAccessor() { 
            return App::make('query');  
        }
    }

use Illuminate\Support\ServiceProvider;
    
    class QueryServiceProvider extends ServiceProvider 
    {
        public function register() {
            App::bind('query', function(){
                return new Query;
            });
        }
    }
?>