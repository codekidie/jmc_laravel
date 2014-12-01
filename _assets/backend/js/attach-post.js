$("document").ready(function(){
	$("a.image_click").click(function(){
		queryAllPosts();
		$("#posts-query input.hidden").remove();
		var image_id = $(this).attr('data-image-id');
		console.log(image_id);
		$("#posts-query").append('<input id="image_attach_id" class="hidden" type="hidden" value="'+image_id+'">')
	});
	$("#search-post").submit(function(){
		$("#posts-query > input#post_attach_id").remove();
		var keyword = $("#keyword").val();
		$.ajax({
			type : "POST",
			url : "post/getJsonPosts",
			data : {"keyword":keyword},
			success : function(data){
				$("#posts-query p,div.alert").remove();
				if(data != 0){
					queryTemplate(data);
				}else{
					$("#search-post").before(errorLabel());
				}
			}
		});
		return false;
	});

	$("#btn-close,.close").click(function(){
		$("#posts-query > #image_attach_id,#posts-query > #post_attach_id, #posts-query > tr").remove();
		$(".alert").remove();
		$(".error-label").remove();
	});

	// LINK IMAGE
	$("#btn-save").click(function(){
		post_id = $("#post_attach_id");
		image_id = $("#image_attach_id");
		if(post_id.val()==""){
			alert("Whoops! Please select a post to attach!");
		}else{
			$.ajax({
				type : "POST",
				data :{"image_id":image_id.val(), "post_id":post_id.val()},
				url : 'post/attachImage',
				success: function(data){
					$("#attachModal .modal-body").prepend("<div class='error-label'>Image Attached Successfully!</div>");
				}
			});
		}
		
	});
	// START QUERY ALL POSTS
	function queryAllPosts(){
		var keyword = "all";
		$.ajax({
			type : "GET",
			url : "post/getJsonPosts",
			data : {"keyword":keyword},
			success : function(data){
				$("#posts-query p").remove();
				queryTemplate(data);
			}
		});
	}

	// error label
	function errorLabel(){
		var e = '<div class="alert alert-dismissable alert-warning">';
            e += '<button type="button" class="close" data-dismiss="alert">×</button>';
            e += '<h4>Whoops!</h4>';
            e += '<p>No available posts found!</p>';
            e += '</div>';
            return e;
	}

	// SEARCH TEMPLATE
	function queryTemplate(data){
		$("#posts-query tr").remove();
			for(i=0;i<data.length;i++){
				var d =  '<tr>';
		            d += '<td width="30">';
		            d += '<input type="radio" class="radio_check" name="post" id="'+data[i].id+'">';
		            d += '</td>';
		            d += '<td>'+data[i].title+'</td>';
					d += '</tr>';
					$("#posts-query").append(d);
			}

		
			$("input.radio_check").click(function(){
				$(this).prop("checked");
					$("input#post_attach_id").remove();
					// console.log($(this).attr("id") + " was checked!");
					$("#posts-query").append('<input id="post_attach_id" type="hidden" value="'+$(this).attr("id")+'">')
				});
	}//end search template

});