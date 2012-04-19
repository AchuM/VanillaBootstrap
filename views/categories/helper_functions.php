<?php if (!defined('APPLICATION')) exit();
/**
 * Render options that the user has for this discussion.
 */
function GetOptions($Category, $Sender) {
	if (!Gdn::Session()->IsValid())
		return;
	
	$Result = '';
	$Options = '';
	$CategoryID = GetValue('CategoryID', $Category);

	$Result = '<div class="Options">';
	$TKey = urlencode(Gdn::Session()->TransientKey());

	// Mark category read.
	$Options .= '<li>'.Anchor(T('Mark Read'), "/vanilla/category/markread?categoryid=$CategoryID&tkey=$TKey").'</li>';

	// Follow/Unfollow category.
	if (!GetValue('Following', $Category))
		$Options .= '<li>'.Anchor(T('Follow'), "/vanilla/category/follow?categoryid=$CategoryID&value=1&tkey=$TKey").'</li>';
	else
		$Options .= '<li>'.Anchor(T('Unfollow'), "/vanilla/category/follow?categoryid=$CategoryID&value=0&tkey=$TKey").'</li>';

	// Allow plugins to add options
	$Sender->FireEvent('DiscussionOptions');

	if ($Options != '') {
		$Result .= '<div class="btn-group OptionsMenu"><a class="btn btn-mini dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-cog"></i>
				<span class="caret"></span></a>'
			.'<ul class="dropdown-menu pull-right">'.$Options.'</ul>'
			.'</div>';
		
	$Result .= '</div>';
	return $Result;
	}
}