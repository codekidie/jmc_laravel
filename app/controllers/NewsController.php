<?php

class NewsController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 * GET /news
	 *
	 * @return Response
	 */
	public function index()
	{
		$data['page_title'] = "News";
		$data['news'] = News::paginate(15);
		return View::make('clientside.news.index',$data);
		
	}

	/**
	 * Show the form for creating a new resource.
	 * GET /news/create
	 *
	 * @return Response
	 */
	public function create()
	{
		$data['page_title'] = "News";
		$data['news'] = News::paginate(15);

		return View::make('administrator.news.index',$data);
	}

	/**
	 * Store a newly created resource in storage.
	 * POST /news
	 *
	 * @return Response
	 */
	public function store()
	{
		$data = Input::all();
		$rules = array('title'=>'required|unique:news',
					   'news_image'=>'required',
					   'news_content'=>'required',
					   'published_by'=>'required'
					   );

		$message = array("required"=>Helpers::errorLabel(" is required!"),
			             "unique"=>Helpers::errorLabel(" has been taken!"));
		$v = Validator::make($data,$rules,$message);
		if($v->fails()){
			return Redirect::to('events/create')->withErrors($v)->withInput();
		}
		else{
				$n = new News;
				$n->title = $data['title'];
				$n->image_path = $data['news_image'];
				$n->content = $data['news_content'];
				$n->publishedby = $data['published_by'];

				$n->save();	

				Session::flash('message',Helpers::message("News Successfully Created!"));
				return Redirect::to('news/create');
			}
	}

	/**
	 * Display the specified resource.
	 * GET /news/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 * GET /news/{id}/edit
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 * PUT /news/{id}
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
	 * DELETE /news/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

	public function singleNews($id)
	{
		$data['news'] = News::find($id);
		$data['page_title'] =  $data['news']->title;


		return View::make('clientside.news.singlenews',$data);
	}
}