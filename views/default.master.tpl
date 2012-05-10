<!DOCTYPE html>
<html lang="en">
<head>
	{asset name='Head'}
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- LESS
	================================================== -->
 	
 	<link rel="stylesheet/less" type="text/css" href="/themes/VanillaBootstrap/design/less/main.less">
	
	<!-- Javascript
	================================================== -->
	
	<script type="text/javascript" src="/themes/VanillaBootstrap/js/bootstrap.less.js"></script>
	<script type="text/javascript" src="/themes/VanillaBootstrap/js/bootstrap.main.js"></script>
	<script type="text/javascript" src="/themes/VanillaBootstrap/js/plugin.autosize.js"></script>
	<script type="text/javascript" src="/themes/VanillaBootstrap/js/plugin.scroll.js"></script>
	<script type="text/javascript" src="/themes/VanillaBootstrap/js/vanilla.main.js"></script>
	
	<!-- Google Prettify
	================================================== -->
	
	<script type="text/javascript" src="/themes/VanillaBootstrap/js/prettify/prettify.js"></script>
	
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
				<!-- <a class="brand" href="{link path="/"}">{logo}</a> -->
				<div class="nav-collapse">
					<ul class="nav">
						<li><a><i class="icon-pencil"></i> This menu is fully customizable</a></li>
					</ul>
					
					<ul class="nav pull-right">
						{if $User.SignedIn}						
						<li>
							{link path="signinout"}
						</li>
						<!-- <li class="divider-vertical"></li> -->
						</li>
						{/if}
						{if !$User.SignedIn}						
						<li>
							<a href="{link path="/entry/register"}"> 
								<i class="icon-edit"></i> Sign up
							</a>
						</li>
						<li class="divider-vertical"></li>
						<li>
							<a href="{link path="/entry/signin"}" class="SignInPopup">Have an account? 
								<i class="icon-signin"></i> <b>Sign in</b>
							</a>
						</li>
						<!-- <li class="divider-vertical"></li> -->
						{/if}
					</ul>
				</div>
			</div>
		</div>
	</div>		

	<!-- Container
	================================================== -->

	<div class="container">
		
		<div id="Breadcrumbs">{breadcrumbs}</div>
		
		<header class="jumbotron subhead" id="overview">
			<h1>{logo}</h1>
			<div class="subnav">
				<ul class="nav nav-pills">
					{dashboard_link}
					{discussions_link}
					{activity_link}
					{inbox_link}
					{bookmarks_link}
					{custom_menu}
					{profile_link}
					<li class="navbar-search pull-right">
						{searchbox}
					</li>
				</ul>
			</div>
		</header>
	
		<div class="row-fluid">
			<div class="Column PanelColumn span3" id="Panel">
				{module name="MeModule"}
				{asset name="Panel"}
				<div class="credits well">
					Powered by <a target="_blank" href="http://vanillaforums.org"><b>Vanilla.</b></a>
					Made with <a target="_blank" href="http://getbootstrap.com"><b>Bootstrap.</b></a>
					<br>
					Theme built by <a href="https://github.com/kasperisager"><b>Kasper Kronborg Isager</b></a>
					<!-- Feel free to delete my name from the list, but please keep both the Vanilla and Bootstrap notices -->
				</div>
			</div>
			<div class="Column ContentColumn span9" id="Content">
				{asset name="Content"}
			</div>
		</div>
		
		{asset name="Foot"}
		
	</div>
	
	{event name="AfterBody"}
	
</body>
</html>