jQuery(document).ready(function() {
	
	// Fix subnav to top and add extra class
	$('.bs-docs-social.subhead').scrollToFixed({
		marginTop: 40,
		preFixed: function() { jQuery(this).addClass('subnav-fixed'); },
		postFixed: function() { jQuery(this).removeClass('subnav-fixed'); }
	});
	
	$('textarea.TextBox').livequery(function() {
		$(this).autosize();
	});
	
	$('.Video').fitVids();
	
	// Smooth Scroll to Top
	$('.back-to-top').click(function(){
		$('html, body').animate({scrollTop:0}, 250);
		return false;
	});
	
});

// Recaptcha
var RecaptchaOptions = {
	theme : 'clean'
};