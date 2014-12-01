<?php
/* 
If you are using sublime as your text editor. You can use
Ctrl + G , then type the line number to go to that line you want to view.

 Methods used:
|_|_line_|_function name_|_____________________________________________________________________________________
 1.  [28]  adminBar($pageID) - Used for displaying admin bar on frontend if the user/admin is currently loggedin
 2.  [73]  currentDate() -  Getting the current Year Month and Date in local time zone
 3.  [79]  currentDateTime() - Getting the current Timestamp in local time zone
 4.  [85]  currentTime() - Getting the current Time in local time zone
 5.  [90]  deleteExcelFile($filename) - This is for deleting an excel file that is currently uploaded on the site.
 6.  [104] deleteFile($filename,$directory(optional)) - This will delete a file in a specific directory.
 7.  [117] errorLabel($message) - This is used for displaying error message anywhere in admin area.
 8.  [121] format_date($timestamp) - This will return date "F, d Y" format from the timestamp YYYY-MM-DD:HH:MM:SS
 9.  [131] format_time($time) - This will format the time in hh:mm am/pm format.
 10. [143] format_timestamp($timestamp) - This will return hh:mm am/pm format from a timestamp format: YYYY-MM-DD:MM:SS
 11. [179] remove_whitespace($string) - Used for trimming spaces
 12. [173] message($message) - This is used for displaying popup messages anywhere in admin area.
 13. [182] slug($string) - Used for trimming spaces and replace it with _ in all spaces found
 14. [186] stringDateTime($date_string) - Converting string to Timestamp (ex. now, +3 days, +1 week)
 15. [190] text_to_link($string) - Used for locating texts with http:// on it and replace it with the link along with its texts. Usage: twitter profile links.
 16. [195] unslug($string) - Used for removing underscorese "_" and apply spaces in replace on "_".
 15. [198] user_id() - This will return the current logged in user ID
*/
Class Helper{
  
    public static function adminBar($pageID=null){
      if(Auth::check() && Auth::user()->role="admin"):
          $ab = '<div class="fixed">';
          $ab .= '<nav class="top-bar" data-topbar>';
          $ab .= '<ul class="title-area">
            <li class="name">
              <h1><a href="#">Hype Backend 2.0</a></h1>
            </li>
            
            <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
          </ul>
        
          <section class="top-bar-section">
            
            <ul class="right">
              <li class="active"><a target="_blank" href="'.url('administrator').'">Go to Dashboard</a></li>
              <li class="has-dropdown">';

            $ab .= '<a href="#">Hi '.ucwords(Auth::user()->firstname).'</a>';
            $ab .= '<ul class="dropdown">
                      <li><a href="'.url('profile').'" target="_blank">My Profile</a></li>
                      <li><a href="'.url('logout').'">Log Out</a></li>
                    </ul>
                  </li>
                </ul>';


            $ab .= '<ul class="left">';
            $ab .= ' <li><a href="'.url('administrator/page/create').'" target="_blank">New Page</a></li>';
            $ab .= '<li><a href="'.url('administrator/post/create').'" target="_blank">Add Post</a></li>';
            $ab .= '<li><a href="'.url('administrator/menu').'" target="_blank">Create Menu</a></li>';
            $ab .= '<li><a href="'.url('administrator/category').'" target="_blank">Add Category</a></li>';
              if(Request::segment(1) =="page"):
             $ab .= ' <li class="active"><a href="'.url('administrator/page/edit/'.$pageID).'" target="_blank" class="button success">Edit Page</a></li>';
             $ab .=  '<li class="active"><a href="'.url('administrator/page/delete/'.$pageID).'" target="_blank" class="button alert">Delete Page</a></li>';
              endif;
            $ab .= '</ul>
              </section>
            </nav>';

            $ab .= '</div>';
            return $ab;
            endif;
    }
    /* Getting the current Year Month and Date in local time zone*/
    public static function currentDate(){
        date_default_timezone_set('Asia/Manila');
        $date_today = date('Y-m-d');
        return $date_today;
    }
     /* Getting the current Timestamp in local time zone*/
    public static function currentDateTime(){
        date_default_timezone_set('Asia/Singapore');
        $date_time_today = date('Y-m-d G:i:s');
        return $date_time_today;
    }
     /* Getting the current Time in local time zone*/
    public static function currentTime(){
        // date_default_timezone_set('Singapore');
        $time_today = date('H:i:s');
        return $time_today;
    }
    public static function deleteExcelFile($file_name){
      if(file_exists(base_path()."$file_name")){
            if(unlink(base_path()."$file_name")){
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
     // DELETE FILE IF EXISTS
    public static function deleteFile($file_name,$directory="_uploads"){
      if(file_exists(base_path()."/$directory\\$file_name")){
            if(unlink(base_path()."/$directory\\$file_name")){
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
    // Calculate AM to PM time
    public static function format_date($timestamp){
        // date_default_timezone_set('Singapore');
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
    public static function format_timestamp($timestamp){
        $item = explode(' ',$timestamp);

        $YearMonthDate = $item[0]; // 2014-04-30
        $HoursMinutesSeconds = $item[1];
        $date = explode('-',$YearMonthDate);
        $ye = $date[0];
        $mo = $date[1];
        $da = $date[2];
        $time = explode(':',$HoursMinutesSeconds);
        $ho = $time[0];
        $mi = $time[1];
        $se = $time[2];
        
        $meridian = "";
          if($ho > 12)
         {
            $ho = $ho-12;
            $get_timestamp = date("F, d Y $ho:$mi",mktime(0,0,0,$mo,$da,$ye));
            $meridian = " pm";
         }
         //24 hour format: if current time is lesser than twelve then
         // the meridian is am (Morning)
         else{
            date_default_timezone_set('Asia/Singapore');
            $get_timestamp = date("F, d Y $ho:$mi",mktime(0,0,0,$mo,$da,$ye));
            $meridian = " am";
         }
         return $get_timestamp.$meridian;    
    }
    public static function message($message){
        return "<div class=\"alert message alert-success alert-dismissable\">
        <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\">×</button>
                     <strong>$message</strong>
                </div>";
    }
    public static function remove_whitespace($subject){
      return str_replace(" ","",$subject);
    }
	  public static function slug($subject){
    	return str_replace(" ","_",strtolower($subject));
    }
    /* Converting string to Timestamp ex. now, +3 days, +1 week*/
    public static function stringDateTime($date){
        // date_default_timezone_set('Singapore');
        return $today = date('Y-m-d G:i:s',strtotime($date));
    }
    public static function text_to_link($text){
      $replacement = "<a href='\\0' target='_blank'>\\0</a>";
      $words = preg_replace('(http://(.*)(/.{10}))',$replacement,$text);
      return $words;
    }
    public static function unslug($subject){
        return str_replace("_"," ",ucwords($subject));
    }
    public static function user_id(){
        $user_id = Auth::user()->id;
        return $user_id;
    }
}

use Illuminate\Support\Facades\Facade;
    
    class Helpers extends Facade
    {
        protected static function getFacadeAccessor() { 
            return App::make('helper');  
        }
    }

use Illuminate\Support\ServiceProvider;
    
    class HelperServiceProvider extends ServiceProvider 
    {
        public function register() {
            App::bind('helper', function(){
                return new Helper;
            });
        }
    }
?>