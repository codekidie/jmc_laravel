$("document").ready(function(){
	setInterval(messageCount,3000);
	setInterval(viewMessages,2000);
	function messageCount(){
		$("#message_count").load("http://localhost/bloodhuntphil/count_messages");
		// $("#message-link").load("http://localhost/hotelcraze/count_messages");
	}
	function viewMessages(){
		$("#new-messages").load("http://localhost/bloodhuntphil/view_messages");
	}
});