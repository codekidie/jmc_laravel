<?php

class MessageController extends BaseController {
	public function __construct(){
		$this->beforeFilter("auth",array("only"=>array("show","index")));
		$this->beforeFilter("is_admin_active",array("only"=>array("show","index")));
	}
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$m = Message::orderBy('created_at','desc')->get();
		$data = array('page_title'=>'Inbox',
					  'messages'=>$m);
		return View::make('administrator.inbox.index',$data);
	}
	public function viewInbox(){
		$messages = Message::orderBy('created_at','desc')->get();
		if(count($messages) >=1){
			foreach($messages as $m){
				$i = '<tr>';
				$i .= '<td><a href="'.url('inbox/delete'.$m->id).'"><i class="fa fa-trash-o"></i></a></td>';
				$i .= '<td width="180"><a href="'.url('inbox/read/'.$m->id).'">'.ucwords($m->firstname)." ".ucwords($m->lastname).'</a></td>';
				$i .= '<td><strong>'.ucwords($m->subject).":</strong><em>".str_limit(ucwords($m->message),80).'</em></td>';
				$i .= '<td>'.Helpers::format_timestamp($m->created_at).'</td>';
				$i .= '</tr>';
				echo $i;
			}	
		}
		else{
			echo "<h3><span style='padding:10px'>No Message</span></h3>";
		}
		
	}
	public function countMessage(){
		$m = Message::where('status',1)->get();
		return count($m);
	}

	public function viewMessages(){
		if(Request::ajax()){
			$messages = Message::where('status',1)->limit(5)->get();
			foreach($messages as $m){
				$i = '<li class="message-preview">';
				$i .= '<a href="'.url('inbox/read/'.$m->id).'">';
				$i .= '<span class="avatar"><img src="http://placehold.it/50x50"></span>';
				$i .= '<span class="name">'.ucwords($m->firstname)." ".ucwords($m->lastname).'</span>';
				$i .= '<span class="message">'.str_limit($m->message,50).'</span>';
				$i .= '</a>';
				$i .= '</li>';
				$i .= '<li class="divider"></li>';
				echo $i;
			}
		}else{
			return Redirect::to('404');
		}
		
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
		$m = Message::find($id);
		if($m){
			$m->status = 0;
			$data = array("page_title"=>"Read".$m->firstname."'s Message",
						  "m"=>$m);
			$m->save();
			return View::make('administrator.inbox.read',$data);
		}else{
			return Redirect::to('404');
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
	public function deleteUnread()
	{
		 Message::where('status',1)->delete();
		 return 1;
	}
	public function destroy($id){
		Message::where('id',$id)->delete();
		return Redirect::to('inbox');
	}
	public function sendMessage(){
		if(Request::ajax()){
			$m = new Message;
			$m->subject = Input::get('subject');
			$m->firstname = Input::get('firstname');
			$m->lastname = Input::get('lastname');
			$m->email = Input::get('email');
			$m->status = 1;
			$m->message = Input::get('message');
			$m->created_at = Helpers::currentDateTime();
			$m->save();
			$data = array("subject"=>Input::get('subject'),
						  "firstname"=>Input::get('firstname'),
						  "lastname"=>Input::get('lastname'),
						  "from"=>Input::get('email'),
						  "body"=>Input::get('message'));
			Mail::send('emails.contact',$data, function($message) use ($data){
				$user = User::find(1);
				$message->from($data['from']);
				$message->to($user->email)->subject($data['subject']);
			});
			return 1;
		}
	}

	public function mailBox()
	{
		$data['page_title'] = 'Mail Box';
		$data['establishments'] = Establishment::paginate(15);

		return View::make('clientside.mail.index',$data);
	}

	public function sendMail()
	{
			$m = new Message;
			$m->subject = Input::get('subject');
			$m->firstname = Auth::user()->firstname;
			$m->lastname = Auth::user()->lastname;
			$m->email = Input::get('email_to');
			$m->status = 1;
			$m->message = Input::get('message');
			$m->created_at = Helpers::currentDateTime();
			$m->save();
			$data = array("subject"=>Input::get('subject'),
						  "firstname"=>Auth::user()->firstname,
						  "lastname"=>Auth::user()->lastname,
						  "email_to"=>Input::get('email_to'),
						  "from"=>Auth::user()->email,
						  "body"=>Input::get('message'));
			Mail::send('emails.contact',$data, function($message) use ($data){
				$message->from($data['from']);
				$message->to($data['email_to'])->subject($data['subject']);
			});

			if ($m->save()) {
				return Redirect::to('clientside/mail_box')->with("globals","Mail Box Successfully Sent Your Message To ".$m->email);
			}
	}

}