jQuery(document).ready(function() {

	//Bugs
	jQuery('body').removeClass('thumbnail');

	//Avoid propagation on login dropdown
	jQuery('.login-dropdown').find('form').click(function (e) {
		e.stopPropagation();
	});
	
	//Autosize textareas
	jQuery('textarea').autosize();
	
});

//recaptcha
var RecaptchaOptions = {
	theme : 'clean'
};