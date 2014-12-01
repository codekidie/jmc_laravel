$("document").ready(function(){
	$("#frm_user").submit(function(s){
		s.preventDefault();
		var username = $("#c_username").val();
		var email 	 = $("#c_email").val();
		var password = $("#c_password").val();
		var password_confirm = $("#password_confirmation").val();
		var firstname = $("#c_firstname").val();
		var lastname = $("#c_lastname").val();
		var role	 = $("#c_role").val();
		var profilepic	 = $("#c_profilepic").val();

		$.ajax({
				type : "POST",
				url  : "profile/store",
				data : {"profilepic":profilepic,"username":username,"email":email,"password":password,"password_confirmation":password_confirm,"firstname":firstname,"lastname":lastname,"role":role},
				success: function(data){
					if(data == 1){
						$("#c_profilepic").val("");
						$("#c_username").val("");
						$("#c_email").val("");
						$("#c_password").val("");
						$("#password_confirmation").val("");
						$("#c_firstname").val("");
						$("#c_lastname").val("");
						$(".control-label").remove();
						$("#user-form").prepend("<div class='alert alert-info alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Successfully Created New User</div>");
						$("div[id ^=frm_]").removeClass("has-error");
					}else if(data == 2){
						console.log("failed Insert!");
					}
					else{
						console.log(data.username);
						$(".control-label").remove();
						if(data.username != undefined){
							$("input#c_username").before(errorLabel(data.username));
							$(".control-label").fadeIn("slow");
							$("#frm_username").addClass("has-error");
						}
						if(data.email != undefined){
							$("input#c_email").before(errorLabel(data.email));
							$("#frm_email").addClass("has-error");

						}
						if(data.password != undefined){
							$("input#c_password").before(errorLabel(data.password));
							$("#frm_password").addClass("has-error");

						}
						if(data.password_confirmation != undefined){
							$("input#password_confirmation").before(errorLabel(data.password));
							$("#frm_password_confirmation").addClass("has-error");

						}
						if(data.firstname != undefined){
							$("input#c_firstname").before(errorLabel(data.firstname));
							$("#frm_firstname").addClass("has-error");

						}
						if(data.lastname != undefined){
							$("input#c_lastname").before(errorLabel(data.lastname));
							$("#frm_lastname").addClass("has-error");

						}

						
					}
				}
		},"json");
	});
	
	function errorLabel(data){
		return '<label class="control-label" for="inputWarning">'+data+'</label>';
	}
	setInterval(getUsers,1000);	
	function getUsers(){
		$("#registered_users").load("users",function(){
			$("#registered_users").show("slow");
		});
	}
	});