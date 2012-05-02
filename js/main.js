jQuery(window).load(function() {

//Bugs

jQuery('body').removeClass('thumbnail');

//Avoid propagation on login dropdown

jQuery('.login-dropdown').find('form').click(function (e) {
	e.stopPropagation();
});

//Add 'active' class to 'Active' tabs

jQuery('li').each(function() {
	var tabitem = jQuery(this).find('a');
	
	if (jQuery(this).hasClass('Active')) {
		jQuery(tabitem).addClass('active');
	};
});

//Change folder status of categories

jQuery('.PanelCategories li').each(function() {
	var folder = jQuery(this).find('i');
	
	if (jQuery(this).hasClass('Active')) {
		jQuery(folder).toggleClass('icon-folder-open icon-folder-close');
	};
});

//Bookmarks

jQuery('.Bookmark').each(function() {
	var bookmark = jQuery(this).find('i');
	
	if (jQuery(this).hasClass('Bookmarked')) {
		jQuery(bookmark).toggleClass('icon-star-empty icon-star');
	}
	
	jQuery(this).click(function() {
		jQuery(bookmark).toggleClass('icon-star-empty icon-star');
	});
});

});

//Remember excerpt toggle choice

jQuery(window).load(function() {
	var panel = jQuery('.ExcerptList');
	var button = jQuery('.ExcerptToggle');
	var icon = jQuery('.ExcerptToggle i');
	var eye = 'icon-eye-open icon-eye-close';
	var initialState = 'expanded'
	var activeClass = 'active';

	if(jQuery.cookie('panelState') == undefined) {
		jQuery.cookie('panelState', initialState, { path: '/' });
	}
	var state = jQuery.cookie('panelState');
	if(state == 'collapsed') {
		panel.hide();
		button.toggleClass(activeClass);
		icon.toggleClass(eye);
	}
	button.click(function(){
		if(jQuery.cookie('panelState') == 'expanded') {
			jQuery.cookie('panelState', 'collapsed', { path: '/' });
			button.toggleClass(activeClass);
			icon.toggleClass(eye);
			panel.slideUp('fast');
		} else {
			jQuery.cookie('panelState', 'expanded', { path: '/' });
			button.toggleClass(activeClass);
			icon.toggleClass(eye);
			panel.slideDown('fast');
		}
		return false;
	});
	
	//Toggle individual excerpts
	
	jQuery('.DataList li.Item').each(function() {
		var toggle = jQuery(this).find('.SingleExcerptToggle');
		var excerpt = jQuery(this).find('.ExcerptList');
		var icon = jQuery(this).find('.SingleExcerptToggle i');
		var eye = 'icon-eye-open icon-eye-close';
		var up = 'icon-chevron-up';
		var down = 'icon-chevron-down';
		var chevron = 'icon-chevron-down icon-chevron-up';
		
		toggle.click(function() {
			excerpt.slideToggle('fast');
		});
	
	});
	
});