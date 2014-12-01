<?php

class CategoryController extends \BaseController {
	public function __construct(){
		// It will filter out methods which needs a user to login
		$this->beforeFilter("auth",array("only"=>array("index","create","store","destroy","edit","update")));
		// If the current user logged in has a administrator privilige, then the user has the power to create and store data.
		$this->beforeFilter("is_admin_active",array("only"=>array("create","store")));
	}
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		/* page_title is a requirement for every page, 
		   the master header file needs this array key/variable in the template.
		*/
		$page = array("page_title"=>"Category");
		/* It will find file in specific directory:
		    administrator > categories > index.blade.php */
		return View::make('administrator.categories.index',$page);
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		$input = Input::all(); //<--- It will get all submitted input fields in array format.
		/* 
		  Set rules before submitting
		  category name : must be unique and not empty
		  description: it can not be empty
		*/
		$rules = array("name"=>"required|unique:categories",
					   "description"=>"required");
		// validate user inputs
		$v = Validator::make($input,$rules);

		if($v->fails()){ //<--- If it does not pass during validation
			return $v->messages(); //<-- Return error messages in json/array format.
		}else{ //<-- If it passes the validation
			$c = new Category; //<-- instantiate new Category model
			$c->name = $input['name']; //<-- assign $c->name to the $input['name'] array index, from $input = Input::all()
			$c->description = $input['description'];
			if($input["slug"] == ""){ //<-- if the slug <input name="slug" value="some value"> is empty
				$c->slug = Helpers::slug(strtolower($input['name'])); // call the slug helper and slug the category name as default.
			}else{ //<-- if the user specify the slug value, then call the slug helper and slug the specified slug value.
				$c->slug = Helpers::slug(strtolower($input['slug']));
			}
			if($c->save()){ //<--- if all the data is saved then return 1 as for parameter
				return 1;
			}
		}
		
	}
    /* This method is used to view all categories. It is used for fetching categories by jQuery
       under assets > backend > js > category.js through the route administrator/category/seed_category
    */
	public function viewCategories(){
		$c = Category::all(); //<-- Fetch all categories in the database
		if(Request::ajax()){ //<-- Return results when the request is ajax.
			return $c; //<-- Return in results in an array format.
		}else{
			return false;
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
        if(Request::ajax()){ //<-- If the browser request is in ajax then,
            $c = Category::find($id); // <-- Find the category by its id
            if(count($c) > 0){ //<-- if there is a category greater than 0 then,
                return $c; //<-- return using array format.
            }
            else{ //<-- If the are no Category found, then return 0
                return 0;
            }
        }else{
            return false;
        }
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update()
	{
        if(Request::ajax()){ //<-- If the update request is ajax, then proceed to
            $input = Input::all(); //<-- get all input fields submitted by the form. Its in category.js > $("#update_category")...
            $c = Category::find($input['id']); //<-- Find the category that needs to be updated by finding its Category ID.
            // Get the category name to update <input type="text" name="u_name"> in views > frontend > administrator > categories > index.blade.php
            // Values are controlled by category.js ajax data ex. data:{"name":name}
            $c->name = $input['name'];
            if($input['slug'] == ""){ //<-- If slug value is empty then,
                $c->slug = Helpers::slug($input['name']); //<-- Load the helper slug and generate a underscore on the trimmed spaces in category name.
            }else{ //<-- If the slug is not empty and it has a value, then
                $c->slug = Helpers::slug($input['slug']); //<-- Get the slug value and generate an underscore to every spaces that was removed from the string as a replacement.
            }
            $c->description = $input['description'];  //<--- Get the category description and store it to description field.
            if($c->save()){ //<--- Check if it was saved successfully,
                return 1; //<-- Return 1 as success.
            }else{ // <-- If something went wrong during saving process
                return 0; //<-- Return 0 as not success.
            }
        }else{ //<-- If is not ajax then,
            return false; //<-- Return false, do not proceed or update the category in the database.
        }

	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		if(Auth::user()->role == "admin"){ //<-- Check it has a permission as administrator, If there is
			$c = Category::find($id); //<-- Find the category that needs to be deleted.
			echo ucwords($c->name); //<-- print the name of the category, this will out put on alert/pop message.
			$c->delete(); //<-- Delete it in the database in the categories table.
		}else{
			return 0;
		}
		
	}

}