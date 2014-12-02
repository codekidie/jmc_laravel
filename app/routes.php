<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/


	// USER LEVELS
	Route::get('404',function(){
	$data = array('page_title'=>'Page Not Found');
	return View::make('clientside.page_not_found',$data);});

	Route::get('restrict_admin_page',function(){return View::make('restrict_admin_page');});

	// ADMIN
	Route::get('administrator','DashboardController@index');
	
	// LOGIN
	Route::get('login','LoginController@index');
	Route::post('login/authenticate','LoginController@authenticate');
	Route::get('logout',function(){Auth::logout();return Redirect::to('');});
	Route::get('logout_client',function(){Auth::logout();return Redirect::to('');});


	// USER PROFILE
	Route::get('profile','UserController@edit');
	Route::post('profile/update','UserController@update');
	Route::post('profile/store','UserController@store');
	Route::get('users','UserController@show');
	Route::get('profile/delete/{id}','UserController@destroy');
	Route::get('profile/edit/{id}','UserController@edit_user');

	// MESSAGING
	Route::get('inbox','MessageController@index');
	Route::get('view_inbox','MessageController@viewInbox');
	Route::get('inbox/delete_unread','MessageController@deleteUnread');
	Route::get('inbox/delete/{id}','MessageController@destroy');
	Route::get('inbox/read/{id}','MessageController@show');
	Route::get('count_messages','MessageController@countMessage');
	Route::get('view_messages','MessageController@viewMessages');
	Route::post('send_message','MessageController@sendMessage');
	// PAGES
	Route::get('administrator/page','PageController@index');
	Route::get('administrator/page/create','PageController@create');
	Route::post('administrator/page/save','PageController@store');
	Route::get('administrator/page/edit/{id}','PageController@edit');
	Route::post('administrator/page/update/','PageController@update');
	Route::get('administrator/page/update_status/{id}','PageController@update_status');
	Route::get('administrator/page/delete/{id}','PageController@destroy');
	Route::post('administrator/page/delete_selected/','PageController@destroy_all');
	// POSTS
	Route::get('administrator/posts','PostController@index');
	Route::get('administrator/post/create','PostController@create');
	Route::any('administrator/post/getJsonPosts','PostController@getJsonPosts');
	Route::any('administrator/post/attachImage','PostController@attachImageToPost');
	Route::post('administrator/post/save','PostController@store');
	Route::get('administrator/post/edit/{id}','PostController@edit');
	Route::post('administrator/post/update/','PostController@update');
	Route::get('administrator/post/update_status/{id}','PostController@update_status');
	Route::get('administrator/post/delete/{id}','PostController@destroy');
	Route::post('administrator/post/delete_selected/','PostController@destroy_all');
	// CATEGORIES
	Route::get('administrator/category/','CategoryController@index');
	Route::get('administrator/category/seed_category','CategoryController@viewCategories');
	Route::post('administrator/category/save','CategoryController@store');
	Route::get('administrator/category/edit/{id}','CategoryController@edit');
	Route::get('administrator/category/delete/{id}','CategoryController@destroy');
	Route::post('administrator/category/update','CategoryController@update');
	// MENU
	Route::get('administrator/menu','MenuController@index');
	Route::get('administrator/menu/show','MenuController@show_all');
	Route::post('administrator/menu/save','MenuController@store');
	Route::get('administrator/menu/delete/{ud}','MenuController@destroy');
	Route::post('administrator/menu/attach/','MenuController@attach');
	Route::post('administrator/menu/sync_order/','MenuController@attach');
	// SLIDER
	Route::get('administrator/slider','SliderController@index');
	Route::post('administrator/slider/create','SliderController@create');
	Route::get('administrator/slider/add_image/{id}','SliderController@add_image');
	Route::get('administrator/slider/show_all','SliderController@get_all');
	Route::post('administrator/slider/save','SliderController@store');
	Route::get('administrator/slider/edit/{id}','SliderController@edit');
	Route::post('administrator/slider/update/{id}','SliderController@update');
	Route::get('administrator/slider/delete/{id}','SliderController@destroy');


	// MEDIA
	Route::get('administrator/media',array('as'=>'media','uses'=>'ImageController@index'));
	Route::get('administrator/media/upload','ImageController@store');
	Route::get('administrator/media/delete/{id}','ImageController@destroy');
	Route::get('administrator/media/attachment/{id}','ImageController@show');
	Route::get('administrator/media/edit/{id}','ImageController@edit');
	Route::get('administrator/media/update','ImageController@update');
	Route::post('administrator/media/delete_all','ImageController@destroy_selected');

	// IMAGE
	Route::get('administrator/gallery/show_all','ImageController@show_all');
	Route::get('administrator/gallery/get_photos/{id}','ImageController@getPhotosByID');
	Route::get('administrator/image/delete/{id}','ImageController@destroy');
	Route::post('administrator/image/upload','ImageController@upload');

	// SETTINGS
	Route::get('administrator/settings','SettingsController@edit');
	Route::post('administrator/settings','SettingsController@update');

	// WIDGETS
	Route::get('administrator/widgets','WidgetController@index');
	Route::post('administrator/widgets/store','WidgetController@store');
	Route::get('administrator/widgets/edit/{id}','WidgetController@edit');
	Route::post('administrator/widgets/update/{id}','WidgetController@update');
	Route::get('administrator/widgets/delete/{id}','WidgetController@destroy');


	
	// AJAX REQUESTS
	Route::post('ajax/traffic',function(){
		if(Request::ajax()){
			$input = Input::all();
			return Traffic::getTrafficJSON($input['startDate'],$input['endDate'],7);
		}else{
			return Redirect::to('404');
		}
		
	});

// FRONTEND
Route::get('page/{page}','FrontendController@page');

//Client Side
Route::get('','Clientside@index');

//Client Side Courses
Route::get('courses','CoursesController@index');

//Client Side News
Route::get('news','NewsController@index');

//Client Side Events
Route::get('events','EventManagerController@index');

//Admin Side Events 
Route::get('events/create','EventManagerController@create');
Route::post('events/save','EventManagerController@store');



//Client Side Contact
Route::get('contact','ContactController@index');





// SANDBOX
Route::get('sandbox',function(){

	return var_dump(Establishment::getTweets(7));
});

Route::get('scraper',function(){
	$dom = HtmlDom::file_get_html('https://www.google.com/search?q=fairmont+singapore+tripadvisor&oq=fairmont+singapore+tripadvisor');
	// $elems = $dom->find(".photo > table tr img");
	$contents = $dom->find("ol#rso");
		foreach($contents as $c){
			echo $c;
		}
});

Route::get('mail',function(){
	$data = array("subject"=>"hello",
						  "firstname"=>"Edyl",
						  "lastname"=>"Templado",
						  "from"=>"codekidie@gmail.com",
						  "body"=>"This is a body message");
			Mail::send('emails.contact',$data, function($message) use ($data){
				$user = User::find(1);
				$message->from($data['from']);
				$message->to($user->email)->subject($data['subject']);
			});
});

Route::get('remind','RemindersController@getRemind');
Route::post('mypass','RemindersController@postRemind');




