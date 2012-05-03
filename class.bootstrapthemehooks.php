<?php if (!defined('APPLICATION')) exit();

class BootstrapThemeHooks implements Gdn_IPlugin {
	
	public function Setup() {
		return TRUE;
	}

	public function OnDisable() {
		return TRUE;
	}
	
	//Add "New comment" notice to comment form
	public function DiscussionController_BeforeBodyField_Handler($Sender) {
		echo '<label>New comment</label>';	
	}
	
	//Add input notifiers to comment form
	public function DiscussionController_BeforeFormButtons_Handler($Sender) {
		if (C('Garden.InputFormatter') == 'Markdown' && !$Editing)
			echo '<span>You can use <b><a href="http://en.wikipedia.org/wiki/Markdown">Markdown</a></b> in your post</span>';
		if (C('Garden.InputFormatter') == 'BBCode' && !$Editing)
			echo '<span>You can use <b><a href="http://en.wikipedia.org/wiki/BBCode">BBCode</a></b> in your post</span>';
		if (C('Garden.InputFormatter') == 'Html' && !$Editing)
			echo '<span>You can use <b><a href="http://htmlguide.drgrog.com/cheatsheet.php">Simple Html</a></b> in your post</span>';
	}
		
}