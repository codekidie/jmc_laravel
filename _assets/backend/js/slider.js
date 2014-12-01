$("document").ready(function(){
	/* OUTPUTS ERROR DATA*/
		function errorLabel(data){
			return '<label class="control-label">'+data.name+'</label>';
		}
		/* OUTPUTS SUCCESS MESSAGE*/    
		function successLabel(){
			var m = '<div class="alert alert-dismissable alert-success">';
				m += '<button type="button" class="close" data-dismiss="alert">×</button>';
				m += '<strong>Well done!</strong> You successfully created new slider</a>.';
				m += '</div>';
			return m;
		}
		function updateLabel(){
			var m = '<div class="alert alert-dismissable alert-success">';
				m += '<button type="button" class="close" data-dismiss="alert">×</button>';
				m += '<strong>Well done!</strong> You successfully updated this slider</a>.';
				m += '</div>';
			return m;
		}
	$("#slider-info").click(function(){
		$(".hide-reveal").toggleClass("show");
		return false;
	});

	$("#save_slider").click(function(){
		var name = $("#name").val();
		var description = $("#description").val();
		console.log(name);
		console.log(description);
		$.ajax({
			type: "POST",
			url: "slider/create",
			data: {"name":name,"description":description},
			success:function(data){
				$("#field_name label.control-label,label.control-label br").remove();
				if(data !=1){
					$(".alert.alert-dismissable.alert-success").fadeOut();

					$("#field_name").removeClass('has-error');
					$("input[type='text']").val("");
					$("textarea").val("");
					if(data.name != undefined){
						$("#field_name").addClass('has-error')
						$("#field_name").prepend(errorLabel(data));
					}
				}else{
					$(".alert.alert-dismissable.alert-success").remove();
					$("#slider-body").prepend(successLabel());
					$("input[type='text']").val("");
				}
				
			}
		});
		
	});
	
	setInterval(getAllSlider,500);
	function getAllSlider(){
		$.ajax({
			type : "GET",
			url : "slider/show_all",
			success: function(data){
				var link_delete = "http://localhost/bloodhuntphil/administrator/slider/delete/";
				var link_edit = "http://localhost/bloodhuntphil/administrator/slider/edit/";
				var link_add = "http://localhost/bloodhuntphil/administrator/slider/add_image/";
				$("#slider-query tr").remove();
				for(i=0;i<data.length;i++){
				var t = '<tr>';
					t +='<td>'+data[i].id+'</td>';
					t +='<td>'+data[i].name+'</td>';
					t +='<td>'+data[i].slug+'</td>';
					t +='<td><a href="'+link_add+data[i].id+'" target="_blank" id="slider_add_'+data[i].id+'"><i class="fa fa-picture-o"></i> Add Photos</a> | <a href="" target="_blank" id="slider_edit_'+data[i].id+'" data-toggle="modal" data-target="#edit-slider" data-id="'+data[i].id+'"><i class="fa fa-pencil"></i> Edit</a> | <a href="" id="slider_delete_'+data[i].id+'" data-id="'+data[i].id+'"><i class="fa fa-trash-o"></i> Delete</a></td>';
					t +='</tr>';
					$("#slider-query").prepend(t);

					// START DELETE SLIDER
					$("#slider_delete_"+data[i].id).click(function(){
						var id = $(this).attr("data-id");
						console.log("sdf");
						$.ajax({
							type: "GET",
							url: "slider/delete/"+id,
							success: function(data){
								if(data == 1){
									alert("Successfully Deleted!");
								}
								else{
									alert("Slider could not be deleted!");
								}
							}
						});
						return false;
					});
					// END DELETE SLIDER

					// START EDIT SLIDER
					$("#slider_edit_"+data[i].id).click(function(){
						var id = $(this).attr('data-id');
						$.ajax({
							type : "GET",
							url	 : "slider/edit/"+id,
							success:function(data){
								$("#edited_name").val(data.name);
								$("#edited_description").val(data.description);

								$("#update_slider").click(function(){
									var edited_name = $("#edited_name").val();
									var edited_description = $("#edited_description").val();
									$.ajax({
									type: "POST",
									url: "slider/update/"+id,
									data: {"name":edited_name,"description":edited_description},
									success:function(data){
										$("#field_edit_name label.control-label,label.control-label br").remove();
										if(data !=1){
											$(".alert.alert-dismissable.alert-success").fadeOut();

											$("#field_edit_name").removeClass('has-error');
											$("input[type='text']").val("");
											$("textarea").val("");
											if(data.name != undefined){
												$("#field_edit_name").addClass('has-error')
												$("#field_edit_name").prepend(errorLabel(data));
											}
										}else{
											$(".alert.alert-dismissable.alert-success").remove();
											$("#slider-edit").prepend(updateLabel());
										}
										
									}
								});
									return false;
								});
							}
						});
						
					});
					// END EDIT SLIDER
				}
			}
		});
	}
});