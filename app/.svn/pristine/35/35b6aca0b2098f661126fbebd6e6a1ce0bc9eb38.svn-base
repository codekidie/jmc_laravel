<?php

class SliderController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$slider = array();
		$data = array('page_title'=>'Slider',
					  'sliders'=>$slider);
		return View::make('administrator.slider.index',$data);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		
			$data = Input::all();
			$rules = array("name"=>'required|unique:sliders');
			$v = Validator::make($data,$rules);
			if($v->fails()){
				return $v->messages();
			}
			else{
				$n = new Slider;
				$n->name = $data['name'];
				$n->slug = Helper::slug($data['name']);
				$n->description = $data['description'];
				$n->save();
				return 1;
			}
		
		
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$slider = array();
		$data = array('page_title'=>'Create New Slider',
					  'sliders'=>$slider);
		return View::make('administrator.slider.show',$data);
	}

	public function get_all(){
		if(Request::ajax()){
			$s = Slider::all();
			return Response::json($s);
		}
	}

	public function add_image($id){
		$data = array("page_title"=>"Add Image on slider",
					  "slider"=>Slider::find($id));
		return View::make('administrator.slider.create',$data);
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id){
		if(Request::ajax()){
			$s = Slider::find($id);
			return Response::json($s);
		}
		else{
			return Redirect::to('404');
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
		$s = Slider::find($id);
		$s->name = Input::get('name');
		$s->description = Input::get('description');
		$s->status = 0;
		$s->save();
		return 1;
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		if(Request::ajax()){
			$s = Slider::find($id);
			$s->images()->detach();
			if($s->delete()){
				return 1;
			}
			else{
				return 0;
			}
		}
		
	}

}