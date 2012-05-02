<?php if (!defined('APPLICATION')) exit();

class BootstrapThemeHooks implements Gdn_IPlugin {
	
   public function Setup() {
		return TRUE;
   }

   public function OnDisable() {
      return TRUE;
   }
	
	/**
	 * Add stylesheets and js
	 */
	public function Base_Render_Before($Sender) {
		if (is_object($Sender->Head)) {
			
			// Add Css
			$Sender->Head->AddTag('link', array('rel' => 'stylesheet/less', 'href' => '/themes/VanillaBootstrap/design/less/main.less'));
			$Sender->Head->AddTag('link', array('rel' => 'stylesheet', 'href' => '/themes/VanillaBootstrap/design/prettify/prettify.css'));

			// Add Js
			$Sender->Head->AddScript('/themes/VanillaBootstrap/js/less.min.js', 'text/javascript', 12);
			$Sender->Head->AddScript('/themes/VanillaBootstrap/js/bootstrap.min.js', 'text/javascript', 13);
			$Sender->Head->AddScript('/themes/VanillaBootstrap/js/cookie.plugin.js', 'text/javascript', 14);
			$Sender->Head->AddScript('/themes/VanillaBootstrap/js/main.js', 'text/javascript', 15);
			$Sender->Head->AddScript('/themes/VanillaBootstrap/design/prettify/prettify.js', 'text/javascript', 16);

		}
	}
}