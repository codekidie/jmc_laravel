$("document").ready(function(){
	// setInterval(,500);
	getThumbs();
	function getThumbs(){
		var slider_id = $("#slider_id").val();
		$.ajax({
			type : "GET",
			url : "../../gallery/get_photos/"+slider_id,
			success:function(data){
				$("#gallery div").remove();
				for(i=0;i<data.length;i++){
					var	t = '<div class="col-xs-3">';
						t += '<a href="#" data-id="'+data[i].id+'" class="image-th" role="button"><i class="fa fa-trash-o"></i> Trash</a><div class="clearfix"></div>';
						t += '<a href="#" class="thumbnail">';
						t += '<img src="http://localhost/bloodhuntphil/'+data[i].filename+'">';
						t += '</a></div>';
						// console.log(data);
					$("#gallery").append(t);
				}
				$("a.image-th").click(function(){
					var id = $(this).attr("data-id");
					$.ajax({
						type: "GET",
						url : "../../image/delete/"+id,
						success : function(data){
							if(data == 1){
								alert("Image Deleted!");
								window.location.reload();
							}
							else{
								alert("Image could not be deleted!");
							}
						}
					})
					return false;
				});
				$("#gallery div.col-xs-3:nth-of-type(4n+0)").after('<div class="clearfix"></div>');
			}
		});
	}
});