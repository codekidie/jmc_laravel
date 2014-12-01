<?php
Route::get('traveler/bucketlist',function(){
    $data = array("title"=>"Cosmos");
    return View::make('traveler::index',$data);
});