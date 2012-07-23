<?php if (!defined('APPLICATION')) exit();

class BootstrapThemeHooks implements Gdn_IPlugin {
	
	public function Setup() {
		return TRUE;
	}

	public function OnDisable() {
		return TRUE;
	}
	
	public function Base_Render_Before($Sender) {

		// Remove unnecessary files 
		$Sender->RemoveJsFile('jquery.autogrow.js');

		// Add new CSS and Javasript
		$Sender->AddJsFile('jquery.main.js');
		$Sender->AddJsFile('jquery.autosize.js');
		$Sender->AddJsFile('jquery.scroll.js');
		$Sender->AddJsFile('jquery.prettify.js');
		$Sender->AddJsFile('jquery.fitvid.js');
		$Sender->AddCssFile('prettify.css');
		
		// Add Bootstrap Files
		$Sender->AddJsFile('bootstrap-alert.js');
		$Sender->AddJsFile('bootstrap-button.js');
		$Sender->AddJsFile('bootstrap-carousel.js');
		$Sender->AddJsFile('bootstrap-collapse.js');
		$Sender->AddJsFile('bootstrap-dropdown.js');
		$Sender->AddJsFile('bootstrap-modal.js');
		$Sender->AddJsFile('bootstrap-popover.js');
		$Sender->AddJsFile('bootstrap-scrollspy.js');
		$Sender->AddJsFile('bootstrap-tab.js');
		$Sender->AddJsFile('bootstrap-tooltip.js');
		$Sender->AddJsFile('bootstrap-transition.js');
		$Sender->AddJsFile('bootstrap-typeahead.js');

	}
	
	// Add input notifiers to comment form
	public function DiscussionController_BeforeFormButtons_Handler($Sender) {
		if (C('Garden.InputFormatter') == 'Markdown')
			echo '<span class="MarkupHelp hidden-phone hidden-tablet">You can use <b><a href="http://en.wikipedia.org/wiki/Markdown">Markdown</a></b> in your post</span>';
		if (C('Garden.InputFormatter') == 'BBCode')
			echo '<span class="MarkupHelp hidden-phone hidden-tablet">You can use <b><a href="http://en.wikipedia.org/wiki/BBCode">BBCode</a></b> in your post</span>';
		if (C('Garden.InputFormatter') == 'Html')
			echo '<span class="MarkupHelp hidden-phone hidden-tablet">You can use <b><a href="http://htmlguide.drgrog.com/cheatsheet.php">Simple Html</a></b> in your post</span>';
	}
		
}