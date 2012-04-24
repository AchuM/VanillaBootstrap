VanillaBootstrap
================

#### A modern Vanilla theme based on Bootstrap from Twitter

Table of contents
-----------------

1. [Demo](#demo)
2. [Requirements](#requirements)
3. [Installation](#installation)
4. [Features](#features)
	1. [Styling](#styling)
	2. [Embedding](#embedding)
5. [Compatibility](#compatibility)
	1. [QnA plugin](#compatibility-with-qna)
	2. [Kudos plugin](#compatibility-with-kudos)


Demo
----

A demo and support forums can be found here: http://vanilla.ungdomsrod.dk/


Requirements
------------

This theme is currently only compatible with the 2.0 branch of Vanilla. A version for the 2.1 branch might be made if I find the time for it at some point.


Installation
------------

#### Update of the core jQuery-library is REQUIRED

Locate /js/library/jquery.js and replace the contents of the file with the latest version of the jQuery library found here: http://jquery.com/

#### Use of Markdown is HIGHLY recommended

Add the following line to conf/config.php:
	
	$Configuration['Garden']['InputFormatter'] = 'Markdown';


Features
--------

#### Styling

First of all, the theme is pretty easy to customize using CSS without overriding stuff. Just add your custom styles to custom.css, as the only other purpose of this file is to import the main.min.css file.

At the moment, there's a skin included in custom.css which adds the Apple-style linen texture background. Just follow the instructions in custom.css if you want to use this skin.


#### Embedding

This theme has a special embed.min.css file, which allows it to be easily embedded. Just follow the instructions in custom.css if you want to use the embed.min.css stylesheet.


Compatibility
-------------

A few adjustments to some plugins are required for them to work correctly with the theme


#### Compatibility with QnA

Add the following line to conf/config.php
	
	$Configuration['Plugins']['QnA']['UseBigButtons'] = TRUE;

Change line 19 in plugins/QnA/modules/class.newquestionmodule.php from
	
	echo Anchor(T('Ask a Question'), '/post/discussion?Type=Question', 'BigButton NewDiscussion');
	
to

	echo '';

	
#### Compatibility with Kudos

Replace this section of code in plugins/Kudos/default.php:

	public function FormatKudos($DiscussionID, $CommentID = false)
	{
		$Toolbar = '';
		$Kudos = $this->KudosModel->GetDiscussionKudos($DiscussionID);
		if($CommentID) $Kudos = $this->KudosModel->GetCommentKudos($CommentID);
  	
		if($this->loved($Kudos)) $Toolbar .= '<b>+1</b>&nbsp;';
		else $Toolbar .= '<a href="'.Url('discussion/kudos/'.$DiscussionID.'/1/'.$CommentID).'">+1</a>&nbsp;';
		if($this->hated($Kudos)) $Toolbar .= '<b>-1</b>';
		else $Toolbar .= '<a href="'.Url('discussion/kudos/'.$DiscussionID.'/2/'.$CommentID).'">-1</a>';
  	
		if(count($Kudos['l']) || count($Kudos['h']))
		$Toolbar .= '&nbsp;(+'.count($Kudos['l']).' / -'.count($Kudos['h']).' )';

		return $Toolbar;
	}

with this:

	public function FormatKudos($DiscussionID, $CommentID = false)
	{
		$Toolbar = '';
		$Kudos = $this->KudosModel->GetDiscussionKudos($DiscussionID);
		if($CommentID) $Kudos = $this->KudosModel->GetCommentKudos($CommentID);
  	
		if($this->loved($Kudos)) $Toolbar .= '<b><i class="icon-thumbs-up"></i></b>&nbsp;';
		else $Toolbar .= '<a href="'.Url('discussion/kudos/'.$DiscussionID.'/1/'.$CommentID).'"><i class="icon-thumbs-up"></i></a>&nbsp;';
		if($this->hated($Kudos)) $Toolbar .= '<b><i class="icon-thumbs-down"></i></b>';
		else $Toolbar .= '<a href="'.Url('discussion/kudos/'.$DiscussionID.'/2/'.$CommentID).'"><i class="icon-thumbs-down"></i></a>';
  	
		if(count($Kudos['l']) || count($Kudos['h'])) {
			if(count($Kudos['l']) > count($Kudos['h'])) $Status = 'success'; else $Status = 'important';
			$Toolbar .= '&nbsp;<span class="label label-'.$Status.'">+'.count($Kudos['l']).' / -'.count($Kudos['h']).' </span>';
		}

		return $Toolbar;
	}