$("document").ready(function(){
	$("#sidebar-widget").hide();
	var str = "";
		$("#template option:selected").each(function(){
			str = $(this).val();
			if(str == "right_sidebar"){
				$("#sidebar-widget").show("fade",1000);
			}
			else if(str == "left_sidebar"){
				$("#sidebar-widget").show("fade",1000);
			}
			else{
				$("#sidebar-widget").fadeOut("fast");
			}
		});
	$("#template").change(function(){
		var str = "";
		$("#template option:selected").each(function(){
			str = $(this).val();
			if(str == "right_sidebar"){
				$("#sidebar-widget").show("fade",500);
			}
			else if(str == "left_sidebar"){
				$("#sidebar-widget").show("fade",500);
			}
			else{
				$("#sidebar-widget").fadeOut("fast");
			}
		});
	});
});