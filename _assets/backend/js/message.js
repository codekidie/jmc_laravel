$("document").ready(function(){
	setInterval(viewInbox,1000);
	function viewInbox(){
		$("#messages").load("view_inbox");
	}
	setTimeout(loading,800);
	function loading(){
		$("div.progress-bar").css("width","100%");
		$("div.progress").fadeOut(2500);
	}
});