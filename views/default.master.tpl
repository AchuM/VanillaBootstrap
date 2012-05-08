<!DOCTYPE html>
<html lang="en">
<head>
	{asset name='Head'}
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- LESS CSS and Prettify
	================================================== -->
 	
 	<link rel="stylesheet/less" type="text/css" href="/themes/VanillaBootstrap/design/less/main.less">
 	<link rel="stylesheet" type="text/css" href="/themes/VanillaBootstrap/design/prettify/prettify.css">
	
	<!-- Javascript
	================================================== -->
	
	<script type="text/javascript" src="/themes/VanillaBootstrap/js/bootstrap.less.js"></script>
	<script type="text/javascript" src="/themes/VanillaBootstrap/js/bootstrap.main.js"></script>
	
	<script type="text/javascript" src="/themes/VanillaBootstrap/js/plugin.autosize.js"></script>
	
	<script type="text/javascript" src="/themes/VanillaBootstrap/js/vanilla.main.js"></script>
	
	<!-- Google Prettify
	================================================== -->
	
	<script type="text/javascript" src="/themes/VanillaBootstrap/design/prettify/prettify.js"></script>
	
</head>
<body id="{$BodyID}" class="{$BodyClass}" onload="prettyPrint()">
	
	<!-- Navbar
	================================================== -->

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</a>
				<a class="brand" href="{link path="/"}">{logo}</a>
				<div class="nav-collapse">
					<ul class="nav">
						<li class="DiscussionsLink"><a href="{link path="/discussions"}"><i class="icon-comments"></i> Discussions</a></li>
						<li class="ActivityLink"><a href="{link path="/activity"}"><i class="icon-time"></i> Activity</a></li>
						{if $User.SignedIn}	
						<li>
							<a href="{link path="messages/inbox"}"><i class="icon-inbox"></i> Inbox
							{if $User.CountUnreadConversations} <span>{$User.CountUnreadConversations}</span>{/if}</a>
						</li>
						{/if}
						{custom_menu}
					</ul>
					
					<ul class="nav pull-right">
						{if $User.SignedIn}						
						<li class="divider-vertical"></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle signOut" data-toggle="dropdown"><i class="icon-user"></i> {$User.Name}
							{if $User.CountNotifications} <span>{$User.CountNotifications}</span>{/if} <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li class="nav-header">Welcome!</li>
								<li>
									<a href="{link path="profile"}">Profile
									{if $User.CountNotifications} <span>{$User.CountNotifications}</span>{/if}</a>
								</li>
								{if CheckPermission('Garden.Settings.Manage')}
									<li><a href="{link path="dashboard/settings"}">Dashboard</a></li>
								{/if}
								<li class="divider"></li>
								<li>
									{link path="signinout"}
								</li>
							</ul>
						</li>
						{/if}
						{if !$User.SignedIn}						
						<li>
							<a href="{link path="/entry/register"}"> 
								<i class="icon-edit"></i> <b>Sign up</b>
							</a>
						</li>
						<li class="divider-vertical"></li>
						<li>
							<a href="{link path="/entry/signin"}" class="SignInPopup">Have an account? 
								<i class="icon-signin"></i> <b>Sign in</b>
							</a>
						</li>
						{/if}
					</ul>
				</div>
			</div>
		</div>
	</div>		

	<!-- Container
	================================================== -->

	<div class="container">
	
		<div class="row-fluid">
			<div class="Panel span4">
				<div class="Box BoxSearch">{searchbox}</div>
				{asset name="Panel"}
				<div class="credits well">
					Powered by <a target="_blank" href="http://vanillaforums.org"><b>Vanilla.</b></a>
					Made with <a target="_blank" href="http://getbootstrap.com"><b>Bootstrap.</b></a>
					<br>
					Theme built by <a href="https://github.com/kasperisager"><b>Kasper Kronborg Isager</b></a>
					<!-- Feel free to delete my name from the list, but please keep both the Vanilla and Bootstrap notices -->
				</div>
			</div>
			<div class="Content span8">
				{asset name="Content"}
			</div>
		</div>
		
		{asset name="Foot"}
		
	</div>
	
</body>
</html>