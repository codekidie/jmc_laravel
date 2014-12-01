$("document").ready(function(){
	
	$("#search_hotel").click(function(){
		var keyword = $("input#keyword-value");
		$.ajax({
			type : "POST",
			url : "../ajax/hotel_search",
			data : {"keyword":keyword.val()},
			success: function(data){
				keyword.val("");
				if(data == 0){
					alert("Not Found!");
				}else{
					count = data.length;
					$("#records tr").remove();
					for(i=0;i<count;i++){
						var t = '<tr>';
						  	t +='<td><a href="hotel/'+data[i].id+'">';
						  	t += data[i].hotel_name;
						  	t +='</a></td>';
						  	t +='<td>'+data[i].country+'</td>';
						  	t +='<td>'+data[i].city+'</td>';
						  	t +='<td>'+data[i].zipcode+'</td>';
						  	t +='<td>'+data[i].numberrooms+'</td>';
						    t +='</tr>';
						$("#records").append(t);
					}
				}
				

			}
		});
	});
});