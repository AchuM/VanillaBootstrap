jQuery(document).ready(function() {

	//Bugs
	jQuery('body').removeClass('thumbnail');

	//Avoid propagation on login dropdown
	jQuery('.login-dropdown').find('form').click(function (e) {
		e.stopPropagation();
	});
	
	//Autosize textareas
	jQuery('textarea').autosize();
	
	//Fix subnav to top and add extra class
	jQuery('.subnav').scrollToFixed({
		marginTop: jQuery('.navbar').outerHeight(),
		preFixed: function() { jQuery(this).addClass('subnav-fixed'); },
		postFixed: function() { jQuery(this).removeClass('subnav-fixed'); }
	});
	
});

//recaptcha
var RecaptchaOptions = {
	theme : 'clean'
};