$("document").ready(function(){
	$(".modal-body div.col-lg-3:nth-of-type(4n+0)").after("<div class='clearfix'></div>");
	$("a.thumbnail").click(function(){
		$("a.selected").removeClass("selected");
		$("div#featured-img > img").remove();
		$("div#featured-img > input[type='hidden']").remove();
		$(this).addClass("selected");
		$("div#featured-img").append($(this).html());
		$("div#featured-img").append("<input type='hidden' name='image_id' value='"+$(this).attr("id")+"'>");
		$("div#featured-img > img").attr("width","220");
		return false;
	});
});