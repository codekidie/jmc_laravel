<?php

class ImageController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$images = Image::all();
		$result = array();
		foreach($images as $image){
			$image_id =  Image::find($image->id);
			$result[] = $image_id->sliders;
		}
		$image_result_id = array();
		foreach($result as $s){
			foreach($s as $slider){
				$image_result_id[] = $slider->pivot->image_id;
			}
		}
		$image_query = Image::whereNotIn('id',$image_result_id)->get();
		$data = array('page_title'=>'Media Files',
					  'images'=>$image_query);
		return View::make('administrator.media.index',$data);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function upload()
	{
			//check if the specified directory in the settings is existing.
			$directory = Setting::getOptions()->upload_directory;
			if(is_dir($directory)){
				$destination = base_path().DIRECTORY_SEPARATOR.$directory;

			}else{
				mkdir("_".$directory,0777);
				$destination = base_path().DIRECTORY_SEPARATOR.$directory;
			}
			$file = Input::file('Filedata')->getClientOriginalName();
			if(Input::hasFile('Filedata')){
				$image = new Image;
				$image->filename = $directory."/".$file;
				$image->filesize = Input::file('Filedata')->getSize();
				$image->save();
				if(Input::get('slider_id') !=""){
					$slider = Slider::find(Input::get('slider_id'));
					$slider->images()->attach($image);
				}
			}
			Input::file('Filedata')->move($destination,$file);
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$image = Image::find($id);
		return View::make('administrator.media.attachment')->with('image',$image);
	}
	public function getPhotosByID($id){
		if(Request::ajax()){
			$slider = Slider::find($id);
			return $slider->images;
		}else{
			return Redirect::to('404');
		}
	}
	public function show_all(){
		if(Request::ajax()){
			$images = Image::all();
			return Response::json($images);
		}

	}
	/**
	 * Show the form for editing the specified resource.
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
	public function destroy_selected(){
		$images = Input::get('image');
		foreach($images as $id){
			$image= Image::find($id);
			$post = Post::where('image_id',$id)->update(array('image_id'=>""));
			$image->delete();
		}
		Session::flash('message',Helper::message('Successfully Deleted!'));
		return Redirect::to('administrator/media');
	}
	public function destroy($id)
	{
		if(Request::ajax()){
			$image = Image::find($id);
			Helper::deleteFile($image->filename);
			$image->sliders()->detach();
			if($image->delete()){
				return 1;
			}else{
				return 0;
			}

		}else{
			$image = Image::find($id);
			$image->sliders()->detach();
			$post = Post::where('image_id',$id)->update(array('image_id'=>""));
			$image->delete();
			Session::flash('message',Helper::message('Successfully Deleted!'));
			Helper::deleteFile($image->filename);
			return Redirect::route('media');
		}
		
	}

}