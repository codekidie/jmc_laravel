<?php

class WidgetController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 * GET /widget
	 *
	 * @return Response
	 */
	public function index()
	{
		$data = array("page_title"=>Setting::getOptions()->title);
		return View::make('administrator.widgets.index',$data);
	}

	/**
	 * Store a newly created resource in storage.
	 * POST /widget
	 *
	 * @return Response
	 */
	public function store()
	{
		$data = Input::all();
		$rules = array("name"=>"required|unique:widgets",
					   "text_html"=>"required");
		$v = Validator::make($data, $rules);
		if($v->fails()){
			return Redirect::to('administrator/widgets')->withErrors($v);
		}else{
			Widget::add($data);
			Session::flash('message',Helper::message("Widget Successfully Created"));
			return  Redirect::to('administrator/widgets');

		}
		
	}

	/**
	 * Show the form for editing the specified resource.
	 * GET /widget/{id}/edit
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$data = array("page_title"=>Setting::getOptions()->title);
		return View::make('administrator.widgets.edit',$data);
	}

	/**
	 * Update the specified resource in storage.
	 * PUT /widget/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$data = Input::all();
		$rules = array("name"=>"required",
					   "text_html"=>"required");
		$v = Validator::make($data,$rules);
		if($v->fails()){
			return Redirect::to('administrator/widgets/edit/'.$id)->withErrors($v);
		}else{
			Widget::getUpdate($id,$data);
			Session::flash('message',Helper::message("Widget Successfully Updated"));
			return Redirect::to('administrator/widgets/edit/'.$id);
		}
	}

	/**
	 * Remove the specified resource from storage.
	 * DELETE /widget/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		Widget::getDelete($id);
		Session::flash('message',Helper::message("Widget Successfully Deleted"));
		return Redirect::to('administrator/widgets');
	}

}