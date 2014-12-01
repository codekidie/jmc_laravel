<?php

class SettingsController extends \BaseController {

	/**
	 * Show the form for editing the specified resource.
	 * GET /settings/{id}/edit
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit()
	{
		$data = array("page_title"=>Setting::getOptions()->title."-Settings");
		return View::make('administrator.settings.index',$data);
	}

	/**
	 * Update the specified resource in storage.
	 * PUT /settings/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update()
	{
		$s = Setting::updateSettings(Input::all());
		if($s == true){
			return Redirect::back();
		}
		
	}


}