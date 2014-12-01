$("document").ready(function(){
	console.log($("#published-btn").text());
	var text_label = $("#published-btn").text()
	$("#date-picker").addClass("hide-cal");
	$("#published-btn").click(function(){
		$("#date-picker").toggleClass("show-cal");
		return false;
	});
	$("#seo-title-link").click(function(){
		var title = $("#post_title").val();
		$("input[name=meta_title]").val(title);
		return false;
	});
});