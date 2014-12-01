$("document").ready(function(){
			$("#loginfrm").draggable({opacity: 0.8,revert: true});
			$("#frm").submit(function(e){
				e.preventDefault();
				var username = $("input#username").val();
				var password = $("input#password").val();
				var token =  $("input[name=_token]").val();
				var dataString = 'username='+username+'&token='+token; 
				$.ajax({
					type: "POST",
					url : "login/authenticate",
					data : {"username":username,"password":password},
					success : function(data){
							$("#content").fadeOut(0);

							if(data == 1){
								window.location = "administrator";

							}
							else if(data == 2){
								$("#content").html("<strong><em>Username or Password not found</em></strong>");
								
							}
							else if(data == 3){
								window.location = "client_area";
								
							}
							else{
								$("#content").html(errorTemplate(data)).animate({
									height: ["toggle"],
									 opacity : 0.5
								},1000,"easeOutBounce",function(){
									$("#content").animate({},"1000");
								});
								console.log('not found');

							}
							$("#content").fadeIn();
					}
				},"json");

		});
			function errorTemplate(data){
				var v = "<div>"
					 // + "<p><strong>"+data.username+"</strong></p>"
				    if(data.username != undefined){
					 v += "<p><strong>"+data.username+"</strong></p>";
					}
					  if(data.password != undefined){
					 	v += "<p><strong>"+data.password+"</strong></p>";
					 }
					v+="</div>";
				return v;
			}
		});//end of document ready function