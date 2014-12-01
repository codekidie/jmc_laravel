<?php

class MenuController extends \BaseController {
	public function __construct(){
		$this->beforeFilter("auth",array("only"=>array("index","create","update","edit","destroy","store")));
		$this->beforeFilter("is_admin_active",array("only"=>array("create","destroy","store")));
	}	
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$m = Menu::all();
		$p = Page::orderBy('title')->get();
		$data = array('page_title'=>'Menu','menus'=>$m,'pages'=>$p);
		return View::make('administrator.menu.index',$data);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		
	}
	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{	
		if(Request::ajax()){
			$rules = array("name"=>"required|unique:menus");
			$data = array("name"=>Input::get('menu_name'));
			$v = Validator::make($data,$rules);
			if($v->fails()){
				return $v->messages();
			}else{
				$m = new Menu;
				$m->name = Input::get('menu_name');
				$m->slug = strtolower(Helpers::slug(Input::get('menu_name')));
				if($m->save()){
					return 1;
				}
			}
		}
	}
	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		
	}
	public function show_all(){
		if(Request::ajax()){
			$m = Menu::all();
			return $m;
		}	
	}
	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function attach()
	{

		$menu_id = Input::get('menu_id'); //<-- this current select menu on accordion ex. <input name="menu_id" value=15">
		$page_id = Input::get('page_id'); //<-- an array of page ids on current menu ex. <input name="page_id[]" value=1">
		$orders = Input::get('order'); //<-- an array of current page orders on every page items ex. <input name="order[]" value=1">
		// If the button Sync Page Order button is clicked, then
		// process the syncing to page items and its orders.
		if(Input::get('update-order')){ //<-- ex. <input name="menu-id" value=15">
			$menuID = Input::get('menu-id'); //<-- menu-id is the current selected menu on accordion ex. <input name="menu-id" value=15">
			$slug_keyword = Input::get('slug'); //<-- slug keyword
			$menu = Menu::find($menuID); //<-- find the menu by ID ex.Top Menu is 15
			$order = [$page_id[0]=>array('menu_order'=>$orders[0],'slug_keyword'=>$slug_keyword)];
			// This will loop until all the menu items and concatenate each item
			// array(1=>array(menu_order=>1,slug_keyword=>"blah blah"))
			for($i=1;$i<count($page_id);$i++){
				$order += [$page_id[$i]=>array('menu_order'=>$orders[$i],'slug_keyword'=>$slug_keyword)];
			}
			$menu->pages()->sync($order); //<-- This will sync in this format: 
			                              //sync(array(1=>array('menu_order'=>,
										  //                    'slug_keyword'=>'blah blah')))

			Session::flash('message',Helpers::message("Page orders Successfully Sync!"));
			return Redirect::to('administrator/menu'); //<-- redirect to menu page after success sync
						
		}else{ //<-- This is not for syncing page orders but rather attach new menu item to the page
			$pages = Input::get('pages'); //<-- This is for the current created pages on "administrator/page" ex. <input name="pages[]" value=1">
			if(count($pages) > 0){ //<-- If the are currently pages avaiable for attachment then proceed syncing new page items.
				$m = Menu::find($menu_id); //<-- Find the menu where to attach by using its id; Input::get('menu_id');
				$m->pages()->sync($pages); //<-- Sync pages to add on current menu items through array(1,2,3,4) page IDs.
				Session::flash('message',Helpers::message("Attached Successfully!"));
				return Redirect::to('administrator/menu'); //<-- redirect to menu page after success sync
			}
			else{
				Session::flash('message',Helpers::message("You must select a page to attach!"));
				return Redirect::to('administrator/menu'); //<-- redirect to menu page after success sync
			}
		}
		
	}
	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}
	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$m = Menu::find($id);
		$m->pages()->detach();
		$m->delete();
	}

}