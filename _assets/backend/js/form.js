$("document").ready(function(){
	$( "#select_all" ).click(function(e){
		e.preventDefault();
		$("input[name^=page]").prop("checked",true);
		$("#select_all").toggle(function(){
			$("#select_all").before('<a href="" id="unselect">Unselect All</a>');
			$("#unselect").click(function(d){
				d.preventDefault();
				$("input[name^=page]").prop("checked",false);
				$(this).hide("slow");
				$("#select_all").show("slow");
			});
		}).fadeOut("slow");
	});

	$(".alert").fadeOut(6000);
	
});
