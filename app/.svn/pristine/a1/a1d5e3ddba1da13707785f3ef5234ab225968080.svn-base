<?php
class Helpers {
    // this is the default menu to be displayed
    static $slug = 'top_menu';
    public static function slugger(){
        return self::$slug;
    }
    public static function slug($subject){
    	return str_replace(" ","_",strtolower($subject));
    }
    public static function unslug($subject){
        return str_replace("_"," ",ucwords($subject));
    }

    // DELETE FILE IF EXISTS
    public static function deleteFile($file_name){
    	if(file_exists(public_path()."\_uploads\\$file_name")){
    				if(unlink(public_path()."\_uploads\\$file_name")){
						return true;
					}
					else{
						return false;
					}
    	}
    	else{
    				return false;
    		}
    		
    }
    public static function errorLabel($message){
        return "<div class=\"label label-danger\">:attribute ".$message."</div>";
    }
    public static function message($message){
        return "<div class=\"alert message alert-success alert-dismissable\">
        <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\">×</button>
                     <strong>$message</strong>
                </div>";
    }
    public static function user_id(){
        $user_id = Auth::user()->id;
        return $user_id;
    }
    // Calculate AM to PM time
    public static function format_date($date){
        date_default_timezone_set('Singapore');
         $date = date($date); /*2014-03-16 20:00:00*/
         $date = explode(' ',$date);
         $dmy = explode('-',$date[0]);
         $m = $dmy[1];
         $d = $dmy[2];
         $y = $dmy[0];
         return $get_date = date('F, d Y',mktime(0,0,0,$m,$d,$y));
    }
    public static function format_time($time){
        $time = explode(':',$time);
        $h = $time[0];
        $m = $time[1];
        if($h > 12){
            $h = $h-12;
            return $h.":".$m." pm";
        }
        else{
            return  $h.":".$m." am";
        }
    }
    public static function format_timestamp($date){
        //select a default timezone in this case Singapore
        date_default_timezone_set('Singapore');
         $date = date($date); /*2014-03-16 20:12:00*/
         //remove space between 2014-03-16 and 20:12:00
         $date = explode(' ',$date);
         //remove "-" from the year 2014-03-16 the first offset [0]
         $dmy = explode('-',$date[0]);
         $m = $dmy[1]; //year - 2014
         $d = $dmy[2]; //month - 03
         $y = $dmy[0]; //date - 16
         //remove ":" from the time 20:12:00 that has the second offset [1]
         $time = explode(':',$date[1]);
         $h = $time[0]; //hour(s) - 20
         $m = $time[1]; //minute(s) - 12
         // am or pm
         $meridian = "";
         // 24 hour format: if current hour(s) is greater than twelve
         // then the meridian is pm(Afternoon)
         if($h > 12)
         {
            $h = $h-12;
            $get_timestamp = date("F, d Y $h:$m",mktime(0,0,0,$m,$d,$y));
            $meridian = " pm";
         }
         //24 hour format: if current time is lesser than twelve then
         // the meridian is am (Morning)
         else{
            $get_timestamp = date("F, d Y $h:00",mktime(0,0,0,$m,$d,$y));
            $meridian = " am";
         }
         return $get_timestamp.$meridian;        
     }
     /* Getting the current Year Month and Date in local time zone*/
    public static function currentDate(){
        date_default_timezone_set('Singapore');
        $date_today = date('Y-m-d');
        return $date_today;
    }
     /* Getting the current Time in local time zone*/
    public static function currentTime(){
        date_default_timezone_set('Singapore');
        $time_today = date('H:i:s');
        return $time_today;
    }
     /* Getting the current Timestamp in local time zone*/
    public static function currentDateTime(){
        date_default_timezone_set('Singapore');
        $date_time_today = date('Y-m-d G:i:s');
        return $date_time_today;
    }
    /* Converting Timestamp to string*/
    public static function stringDateTime($date){
        date_default_timezone_set('Singapore');
        return $today = date('Y-m-d G:i:s',strtotime($date));
    }
    /* Displaying the menu 
      #Default Usage 
           -> On your template call this helper method
             {{Helpers::menu()}} - the default menu is top_menu.

      #Custom Menu
           -> On your template you must instantiate or call the static
              variable $slug.
              <?php Helpers::$slug = 'custom_menu';?>
              {{Helpers::menu()}}
    */
    public static function menu(){
        $m = Menu::with(array('pages'=>function($query){
            $query->where('slug_keyword',self::$slug);
            $query->where('status',1);
            $query->orWhere('menu_id',null);
            $query->orderBy('menu_order');
        }))->get();
        foreach($m as $p){
            foreach($p->pages as $page){
                if(Request::segment(1) == $page->slug){
                    $li = '<li class="current">';
                }else{
                    $li = '<li>';
                }
                echo $li.'<a href="'.url('/'.$page->slug).'">'.ucwords($page->title).'</a></li>';
            }
        }
    }
    public static function contact_form($id){
        $page = Page::find($id);
        if($page->form_active == 1):
            $c = '<div class="form-group">';
            $c .= '<div class="alert-box success" style="display:none">Thank you! We will get back to you shortly.<a href="" class="close">×</a></div>';
            $c .= '<form id="send-message">';
            $c .= '<label for="">First Name</label>';
            $c .= '<input type="text" id="firstname" name="firstname" placeholder="John " required>';
            $c .= '<label for="">Last Name</label>';
            $c .= '<input type="text" id="lastname" name="lastname" placeholder="Doe" required>';
            $c .= '<label for="">Email</label>';
            $c .= '<input type="email" id="email" name="email" placeholder="johndoe@yahoo.com" required>';
            $c .= '<label for="">Subject</label>';
            $c .= '<input type="text" id="subject" name="subject" required placeholder="Subject: How can I book with your hotels?">';
            $c .= '<label for="">Message:</label>';
            $c .= '<textarea name="message" id="message" cols="30" rows="50" required></textarea>';
            $c .= '<br><input type="submit" value="Send" class="success button">';
            $c .= '</form>';
            $c .=  '</div>';
            return $c;
        endif;
    }

}
?>