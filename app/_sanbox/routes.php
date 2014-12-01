<?php

Route::get('sandbox',function(){
	// $user = new User;
	// $user->username = "admin";
	// $user->password = Hash::make('passwd');
	// $user->save();
	$m = new Message;
	$m->subject = "Bugs spotted!";
	$m->email = "biaosm@gmail.com";
	$m->message = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui praesentium officia nisi vero et consectetur porro. Pariatur, fuga commodi aspernatur non necessitatibus. Libero, quasi tempore facilis dicta autem quae impedit.";
	$m->firstname = "Rey";
	$m->lastname = "Ong";
	$m->status = 1;
	$m->created_at = Helpers::currentDateTime();
	$m->save();
});
Route::get('sandbox/page',function(){
	$page = new Page;
	$page->title = "Contact Us";
	$page->save();
	
	$keywords = array("frozen","subdue","dandelleon");
	// check if keyword exists
	foreach($keywords as $k){
		$keyword = new Keyword;
		$keyword_exist = Keyword::where("keyword",$k)->get();
		if(count($keyword_exist) > 0){
			 echo $keyword_exist[0]->id;
			$page->keywords()->attach($keyword_exist[0]->id);
		}
		else{
			$keyword->keyword = $k;
			$keyword->save();
			$page->keywords()->attach($keyword);
			
		}
		
	}	
});
Route::get('sandbox/relationship',function(){
	$page = Page::find(57);
	$words = "";
	foreach($page->keywords as $k){
		$kw = Keyword::find($k->pivot->keyword_id);
		$words .= $kw->keyword.",";
	}
	echo substr($words,0,-1);
});
Route::get('sandbox/user',function(){
	$m = new User;
	$m->username = "admin";
	$m->password = Hash::make("passwd");
	$m->role = "admin";
	$m->status = 1;
	$m->save();
});
Route::get('sandbox/post_cat',function(){
	$post = new Post;
	$post->title = "The Only Fortress";
	$post->content = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam, repellendus, voluptatibus distinctio natus dolor deserunt ex nesciunt illum dolores ea sed delectus. Fugiat deleniti voluptatibus error sit impedit laboriosam accusantium.";
	$post->save();	
	$categories = array("phone","travel and tours","mouse");
	// check if category exists
	/*loop through categories array to see if each category
	  exists or not.
	*/
	foreach($categories as $category){
		$cat = new Category;
		$cat_exist = Category::where("name",$category)->get();
		//if there are result greater than 0
		//attach relationship only, it will not create new category
		if(count($cat_exist) > 0){
			 echo $cat_exist[0]->id."<br>";
			 $post->categories()->attach($cat_exist[0]->id);
		}
		//if the category(s) does not exists then create a new category
		//then attach the category
		else{
			$cat->name = $category;
			$cat->save();
			$post->categories()->attach($cat);
		}
	}
});
Route::post('sandbox/submit',function(){
	$keyword = explode(",",Input::get('meta_keywords'));
	echo $keyword[0];
	if(Input::get('publish')){
		echo "Published!";
	}
	If(Input::get('draft')){
		echo "Drafted!";
	}
});

Route::get('sandbox/today',function(){
	$today = Helper::currentDateTime();
	echo Helper::format_timestamp($today);
	// echo count($h);
});
Route::get('sandbox/relationship',function(){
	$m = Menu::with(array('pages'=>function($query){
		$query->where('slug_keyword','top_menu');
		$query->orWhere('menu_id',0);
		$query->orderBy('menu_order');
	}))->get();
	foreach($m as $p){
		foreach($p->pages as $page){
			echo $page->title."<br>";
		}
	}
});
Route::get('sandbox/menu',function(){	
	$m = Menu::find(1);
	$p = Page::find(4);
	$pages = array(1=>array('menu_order'=>4),
		           2=>array('menu_order'=>3),
		           3=>array('menu_order'=>1),
		           4=>array('menu_order'=>2));
	$m->pages()->sync($pages);
});
