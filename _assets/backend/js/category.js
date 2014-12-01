$("document").ready(function(){
	$("#myModal").draggable({axis:"x",scroll:false});
	function errorLabel(data){
		return '<label class="control-label" for="inputWarning">'+data+'</label>';
	}
	$('#categoryFrm').submit(function(e){
		var name = $("#name").val();
		var slug = $("#slug").val();
		var description = $("#description").val();
		e.preventDefault();
		$.ajax({
			type: 'POST',
			url : 'category/save',
			data:{"name":name,"slug":slug,"description":description},
			success:function(data){
				if(data == 1){
					$("#name").val("");
					$("#slug").val("");
					$("#description").val("");
					$("div[id ^=d_]").removeClass('has-error');
					$(".control-label").hide();
				}
				else{
					$(".control-label").remove();
					$(".control-label").hide();
					if(data.name != undefined){
						$("#name").before(errorLabel(data.name));
						$("#d_name").addClass('has-error');
					}else{
						$("#d_name").removeClass('has-error');
					}

					if(data.slug != undefined){
						$("#slug").before(errorLabel(data.slug));
						$("#d_slug").addClass('has-error');
					}else{
						$("#d_slug").removeClass('has-error');
					}

					if(data.description != undefined){
						$("#description").before(errorLabel(data.description));
						$("#d_description").addClass('has-error');
					}else{
						$("#d_description").removeClass('has-error');
					}

				}
			}
		});
	});
	setInterval(seedCategory,1000);
	// seedCategory();
	function seedCategory(){
		
		$.ajax({
			type : "GET",
			url : "category/seed_category",
			success:function(data){
				var row = data.length;
				$("#seedCategory tr").remove();
				// console.log(row);
				for(i=0; i<row;i++){
					//console.log(data[i]);
					
					var t = "<tr>";
						t +="<td>"+data[i].name+"</td>";
						t +="<td>"+data[i].slug+"</td>";
						t +="<td>"+data[i].description.substring(0,20)+"..."+"</td>";
						t +="<td><a id='"+data[i].id+"' class='delete_cat_"+data[i].id+"' href='category/delete/"+data[i].id+"'><i class='fa fa-trash-o'></i> Delete</a> | <a href='' id='"+data[i].id+"' class='edit_cat_"+data[i].id+"' data-toggle='modal' data-target='#myModal'><i class='fa fa-pencil'></i> Edit</a></td>";
						t +="</tr>";
					$("#seedCategory").append(t);
					//Deleting Category
					$("a.delete_cat_"+data[i].id).click(function(){
						var attrb = $(this).attr("id");
						$.ajax({
							type: "GET",
							data :{"id":attrb},
							url :"category/delete/"+attrb,
							success:function(data){
								if(data == 0){
									alert("You have no permission to delete this category!");
								}else{
									alert("Successfully Deleted!");
								}
							}
						});
						return false;
					});
					// Editing Category
					$("a.edit_cat_"+data[i].id).click(function(){
						$("#category-title").text("");
						$("#u_name").val("");
						$("#u_slug").val("");
						$("#u_description").val("");
						// return false;
						var id = $(this).attr("id");
						$.ajax({
							type: "GET",
							url : "category/edit/"+id,
							success: function(data){
							$("#category-title").text(data.name.toUpperCase());
							$("#u_name").val(data.name);
							$("#u_slug").val(data.slug);
							$("#u_description").val(data.description);
							$("#cat_id").val(data.id);
							}
						})
						$("#update_category").click(function(){
							var name = $("#u_name").val();
							var slug = $("#u_slug").val();
							var description = $("#u_description").val();
							var id = $("#cat_id").val();
							$.ajax({
								type: "POST",
								data :{"id":id,"name":name,"slug":slug,"description":description},
								url: 'category/update',
								success: function(data){
									var message = "<div class='alert alert-dismissable alert-success'><button type='button' class='close' data-dismiss='alert'>×</button><strong>Well done!</strong> successfully Updated.</div>";
									$("#message").html(message);
									$(".alert").fadeOut(2500);
								}
							});

						});
						// $("#edit-category-body").text("hello! "+id);
					});
				}
			}
		},"json");
	}


});