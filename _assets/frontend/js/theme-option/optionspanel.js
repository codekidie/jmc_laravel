jQuery(document).ready(function($) {
	
	$('.options_toggle').bind('click', function() {
		if($('#panel').css('left') == '0px'){
			$('#panel').stop(false, true).animate({left:'-230px'}, 400, 'easeOutExpo');
		}else {
			$('#panel').stop(false, true).animate({left:'0px'}, 400, 'easeOutExpo');
		}	
	});

	
	$('#accent_color').ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			$(el).val(hex);
			$(el).ColorPickerHide();
		},
		onBeforeShow: function () {
			$(this).ColorPickerSetColor(this.value);
		},
		onChange: function (hsb, hex, rgb) {
			$('#accent_color').val(hex);
			$('#accent_color').css('backgroundColor', '#' + hex);
			accentColorUpdate(hex);
		}
	})
	.bind('keyup', function(){
		$(this).ColorPickerSetColor(this.value);
	});

	
function accentColorUpdate(hex){

	hex = '#'+hex;

	$('#custom_styles').html('<style>'+
		'	a, a:hover, .color, .nav li.active a, ul.list a:hover,ol.list a:hover, #browse-menu ul li a:hover, ul.social-top li a:hover, #filter-bar ul#filters li a:hover, .box-desc h4 a:hover, .box-desc h5 a:hover, .box-desc h6 a:hover, ul.fotter-nav li a:hover, article .post-headline h4 a:hover, ul.detail-list li h5 a:hover, ul.cat li a:hover, ul.recent li h6 a:hover { color:'+ hex +'; }' +
		'	#accent_color, .nav-collapse .nav > li.active > a, .navbar .btn-navbar:hover, .navbar-inverse .nav-collapse .nav > li > a:hover, .navbar-inverse .nav-collapse .nav > li > a:focus, .navbar-inverse .nav-collapse .dropdown-menu a:hover, .navbar-inverse .nav-collapse .dropdown-menu a:focus, .navbar-inverse .nav li.dropdown.open > .dropdown-toggle, .navbar-inverse .nav li.dropdown.active > .dropdown-toggle, .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle  { background-color:'+ hex +';}' +
		'	.btn-primary, .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus, .dropdown-submenu:hover > a, .dropdown-submenu:focus > a, .pager li > a:hover, .pager li > a:focus, .zoom:hover, .link:hover, #toTopHover, .heading span, .flexslider:hover .flex-next:hover, .flexslider:hover .flex-prev:hover, ul.tags li a:hover, .media-avatar:hover span.title-comment, .tabs-left > .nav-tabs > li > a:hover, .tabs-left > .nav-tabs > li > a:focus, .tabs-right > .nav-tabs > li > a:hover, .tabs-right > .nav-tabs > li > a:focus, .navaside ul.nav li a:hover, .navaside ul.nav li.active a , .pricing-head, ul.sitemap-list li span, .image-title, .tabber li:hover, .accordion-heading .accordion-toggle:hover  { background-color:'+ hex +';}' +
		'	header, textarea:focus, input[type="text"]:focus, input[type="password"]:focus, input[type="datetime"]:focus, input[type="datetime-local"]:focus, input[type="date"]:focus, input[type="month"]:focus, input[type="time"]:focus, input[type="week"]:focus, input[type="number"]:focus, input[type="email"]:focus, input[type="url"]:focus, input[type="search"]:focus, input[type="tel"]:focus, input[type="color"]:focus, .uneditable-input:focus, a.thumbnail:hover, a.thumbnail:focus, ul.sitemap-list { border-color:'+ hex +';}'+
		'</style>');
}

function bodybgColorUpdate(hex){
	$('body').css('background', '#'+hex);
}
	
});