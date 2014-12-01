$("document").ready(function(){
	//CREATING NEW MENU
	$("#menuFrm").submit(function(){
		var menu_name = $("#menu_name").val();
		$.ajax({
				url  :'menu/save',
				type : "POST",
				data :{"menu_name":menu_name},
				success:function(data){
					if(data == 1){
						console.log("Success");
						$("#menu_name").val("");
					}else{
						console.log(data);
					}
					setInterval(reload,1000); //Reload the page when submitted
				}
		})
		return false;
	});

	// DELETE MENU
	$("a.menu-btn").click(function(e){
		e.preventDefault();
		var menu_id = $(this).attr('id');
		console.log(menu_id);
		$.ajax({
			type : "GET",
			url : "menu/delete/"+menu_id,
			success: function(){
				setInterval(reload,500);

			}
			})
		});

	// ATTACH PAGE
	
	function reload(){
		window.location.reload();
	}
});