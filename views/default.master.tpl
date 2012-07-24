<!DOCTYPE html>
<html lang="en">
<head>

	{asset name='Head'}
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
</head>
<body id="{$BodyID}" class="{$BodyClass}" onload="prettyPrint()">
	
	<!-- Navbar
	================================================== -->
	
	<div class="navbar navbar-fixed-top" id="bootstrap-navbar">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>

				<a class="brand" href="/">VanillaBootstrap</a>
 
				<div class="nav-collapse">
					<ul class="nav">
						<li class="dropdown">
							<a id="drop1" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Community <b class="caret"></b></a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
								{discussions_link}
								{activity_link}
								{custom_menu}
							</ul>
						</li>
					</ul>
					{searchbox}
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
	
	<!-- Header
	================================================== -->
	
	<header class="jumbotron subhead" id="bootstrap-header">
		<div class="container">
			<h1><!--{logo}-->Vanilla&#8203;Bootstrap</h1>
			<p class="lead">The most beautiful Vanilla theme around built on the Bootstrap framework by Twitter for superb usability</p>
		</div>
	</header>
	
	<div class="bs-docs-canvas">
		
		<div class="bs-docs-social hidden-phone hidden-tablet">
			<div class="container">
				{breadcrumbs}
				<div class="pull-right">
					{module name="MeModule"}
				</div>
			</div>
		</div>
	
		<!-- Container
		================================================== -->
	
		<div class="container" id="bootstrap-container">
		
			<noscript>
				<p></p>
				<div class="alert alert-error">
					<strong>Warning!</strong> As the Bootstrap classes are being added dynamically to the Vanilla markup using jQuery, you'll need to enable Javascript in your browser.
				</div>
			</noscript>
		
			<div class="row">
				<div class="span3" id="panel">
					{asset name="Panel"}
				</div>
				<div class="span9" id="content">
					{asset name="Content"}
				</div>
			</div>
		</div>
		
		<!-- Footer
		================================================== -->
		
		<footer class="footer" id="bootstrap-footer">
			<div class="container">
				<p class="pull-right"><a href="#" class="back-to-top">Back to top</a></p>
				{asset name="Foot"}
				<p>VanillaBootstrap is built on <a href="http://twitter.github.com/bootstrap">Bootstrap by Twitter</a> and powered by <a href="http://vanillaforums.org">Vanilla</a></p>
				<p>Twitter Bootstrap is made by <a href="http://twitter.com/mdo">@mdo</a> and <a href="http://twitter.com/fat">@fat</a> and licensed under the <a href="http://www.apache.org/licenses/LICENSE-2.0">Apache License v2.0</a></p>
				<p>The Twitter Bootstrap documentation styles is also created by <a href="http://twitter.com/mdo">@mdo</a> and <a href="http://twitter.com/fat">@fat</a></p>
				<ul class="footer-links">
					<li><a href="https://github.com/kasperisager/VanillaBootstrap/issues?state=open">Submit issues</a></li>
					<li><a href="https://github.com/twitter/bootstrap/wiki">Roadmap and changelog</a></li>
				</ul>
			</div>
		</footer>
	
		{event name="AfterBody"}
	
	</div>
	
	<!-- Javascript
	================================================== -->
	
	{literal}<script type="text/javascript">
	
	// Fix an annoying bug
	$('body').removeClass('thumbnail');
	
	// Buttons
	$('.Button').each(function() { 					$(this).toggleClass('Button btn'); });
	$('.Button').livequery(function() { 			$(this).toggleClass('Button btn'); });
	$('a.Cancel').each(function() { 				$(this).addClass('btn btn-danger'); });
	$('a.Cancel').livequery(function() { 			$(this).addClass('btn btn-danger'); });
	$('.Cancel').find('a').livequery(function() { 	$(this).addClass('btn btn-danger'); });
	$('.NavButton').each(function() {				$(this).toggleClass('NavButton btn'); });
	$('.NewDiscussion').each(function() {			$(this).addClass('btn-primary'); });
	$('.ForgotPassword').livequery(function() {		$(this).addClass('btn btn-danger'); });
	$('.Primary.btn').livequery(function() {		$(this).addClass('btn-primary'); });
	
	// Flyout Menus
	$('.MenuItems').toggleClass('MenuItems dropdown-menu');
	$('.MenuItems').livequery(function() {
		$(this).toggleClass('MenuItems dropdown-menu');
	});
	$('.FlyoutMenu').addClass('dropdown-menu');
	$('.FlyoutMenu').livequery(function() {
		$(this).addClass('dropdown-menu');
	});
	
	// Navigation
	$('.navbar form').each(function() {
		$(this).addClass('navbar-search pull-left');
		$(this).find('input').addClass('search-query').attr('placeholder','Search...');
		$(this).find('input[type="submit"]').remove();
	});
	$('.dropdown-menu ul li hr').livequery(function() {
		$(this).parent().addClass('divider');
		$(this).remove();
	});
	$('.FilterMenu').each(function() {
		$(this).addClass('nav nav-list');
		$(this).find('.Active').addClass('active');
		//$(this).find('li a').append('<i class="icon-chevron-right"></i>');
	});
	
	// Modals
	$('.Popup').livequery(function() { $(this).find('.Body').addClass('modal'); });
	$('.Popup h1').livequery(function() { $(this).addClass('modal-header'); });
	$('.Popup .Content .MainForm').livequery(function() { $(this).addClass('modal-body'); });
	$('.Popup .Content .Legal').livequery(function() { $(this).addClass('modal-body'); });
	$('.Popup .Footer span').livequery(function() { $(this).addClass('close'); });
	
	// Grouped Buttons
	$('.ButtonGroup').each(function() {
		$(this).addClass('btn-group');
		$(this).find('.btn').addClass('btn-primary');
		$(this).find('.Handle').each(function() {
			$(this).addClass('dropdown-toggle').append('<span class="caret"></span>');
		});
		$(this).livequery(function() {
			$(this).find('.Dropdown').addClass('dropdown-menu');
		});
	});
	$(document).delegate('.ButtonGroup > .Handle', 'click', function() {
		var buttonGroup = $(this).parents('.ButtonGroup');
		if (buttonGroup.hasClass('open')) {
			$('.ButtonGroup').removeClass('open');
		} else {
			$('.ButtonGroup').removeClass('open');
			buttonGroup.addClass('open');
		}
		return false;
	});
	
	// Pages
	$('.Entry').each(function() {
		$(this).find('#panel').remove();
		$(this).find('#content').toggleClass('span9 span6 offset3');
	});
	
	</script>{/literal}
	
</body>
</html>