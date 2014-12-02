<?php

class EventsController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 * GET /events
	 *
	 * @return Response
	 */
	public function index()
	{
		return View::make('clientside.events.index')->with('page_title','Events');
		
	}

	/**
	 * Show the form for creating a new resource.
	 * GET /events/create
	 *
	 * @return Response
	 */
	public function create()
	{
		return View::make('administrator.events.create')->with('page_title','Create New Event');
		
	}

	/**
	 * Store a newly created resource in storage.
	 * POST /events
	 *
	 * @return Response
	 */
	public function store()
	{
		$data = Input::all();
		$rules = array('title'=>'required|unique:events',
					   'event_start'=>'required',
					   'event_end'=>'required',
					   'event_details'=>'required');

		$message = array("required"=>Helpers::errorLabel(" is required!"),
			             "unique"=>Helpers::errorLabel(" has been taken!"));
		$v = Validator::make($data,$rules,$message);
		if($v->fails()){
			return Redirect::to('events/create')->withErrors($v)->withInput();
		}
		else{
				$e = new Event_Manager;
				$e->title = $data['title'];
				$e->event_start = $data['event_start'];
				$e->event_end = $data['event_end'];
				$e->event_details = $data['event_details'];
				$e->save();	

				Session::flash('message',Helpers::message("Event Successfully Added!"));
				return Redirect::to('events/create');
			}
	}

	/**
	 * Display the specified resource.
	 * GET /events/{id}
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
	 * GET /events/{id}/edit
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
	 * PUT /events/{id}
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
	 * DELETE /events/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}