<!DOCTYPE html>
<html lang="en">
<head>

	{asset name='Head'}
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
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
	
	<header class="jumbotron masthead">
		<div class="container">
			<h1><!--{logo}-->Vanilla&#8203;Bootstrap</h1>
			<p class="lead">The most beautiful Vanilla theme around built on the Bootstrap framework by Twitter for superb usability</p>
			<p><a href="http://vanillaforums.org/get/bootstrap-theme-1.1b-2.0" class="btn btn-large btn-primary"><i class="icon-download-alt"></i> Download</a> <a href="#" class="btn btn-large btn-success"><i class="icon-heart"></i> Donate</a></p>
			<ul class="masthead-links">
				<li>Created by <a href="http://twitter.com/kasperisager">@KasperIsager</a></li>
				<li>Version 2.1b-2.1</li>
			</ul>
		</div>
	</header>
	
	<div class="bs-docs-social" style="padding: 15px 0;text-align: center;">
		<div class="container">
			<ul class="bs-docs-social-buttons">
				<li>
					<iframe class="github-btn" src="http://markdotto.github.com/github-buttons/github-btn.html?user=kasperisager&amp;repo=VanillaBootstrap&amp;type=watch&amp;count=true" allowtransparency="true" frameborder="0" scrolling="0" width="112px" height="20px"></iframe>
				</li>
				<li>
					<iframe class="github-btn" src="http://markdotto.github.com/github-buttons/github-btn.html?user=kasperisager&amp;repo=VanillaBootstrap&amp;type=fork&amp;count=true" allowtransparency="true" frameborder="0" scrolling="0" width="98px" height="20px"></iframe>
				</li>
				<li class="follow-btn">
					<a href="https://twitter.com/KasperIsager" class="twitter-follow-button" data-show-count="true">Follow @KasperIsager</a>
					{literal}<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>{/literal}
				</li>
				<li class="tweet-btn">
					<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://vanilla.ungdomsrod.dk" data-text="Check out this awesome theme for Vanilla Forums!" data-via="KasperIsager">Tweet</a>
					{literal}<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>{/literal}
				</li>
			</ul>
		</div>
	</div>
	
	<!-- Container
	================================================== -->

	<div class="container">
		<div class="row">
			<div class="span12" id="content">
				{asset name="Content"}
			</div>
		</div>
	</div>
	
	<!-- Footer
	================================================== -->
	
	<footer class="footer">
		<div class="container">
			<p class="pull-right"><a href="#" class="back-to-top">Back to top</a></p>
			{asset name="Foot"}
			<p>VanillaBootstrap is built on <a href="http://twitter.github.com/bootstrap">Bootstrap by Twitter</a> and powered by <a href="http://vanillaforums.org">Vanilla</a></p>
			<p>Twitter Bootstrap is made by <a href="http://twitter.com/mdo">@mdo</a> and <a href="http://twitter.com/fat">@fat</a> and licensed under the <a href="http://www.apache.org/licenses/LICENSE-2.0">Apache License v2.0</a></p>
			<p>The Bootstrap documentation is created by <a href="http://twitter.com/mdo">@mdo</a> and <a href="http://twitter.com/fat">@fat</a> under the <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a> license</p>
			<ul class="footer-links">
				<li><a href="https://github.com/kasperisager/VanillaBootstrap/issues?state=open">Submit issues</a></li>
				<li><a href="https://github.com/twitter/bootstrap/wiki">Roadmap and changelog</a></li>
			</ul>
		</div>
	</footer>
	
	{event name="AfterBody"}
	
	<!-- Javascript
	================================================== -->
	
	{literal}<script type="text/javascript">
	
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
	
	// Grouped Buttons
	$('.ButtonGroup').livequery(function() {
		$(this).addClass('btn-group');
		$(this).find('.Dropdown').addClass('dropdown-menu');
		$(this).find('.Handle').each(function() {
			$(this).addClass('dropdown-toggle').append('<span class="caret"></span>');
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
	
	// Buttons
	$('.Button').each(function() { 					$(this).toggleClass('Button btn'); });
	$('.Button').livequery(function() { 			$(this).toggleClass('Button btn'); });
	$('a.Cancel').each(function() { 				$(this).addClass('btn btn-danger'); });
	$('a.Cancel').livequery(function() { 			$(this).addClass('btn btn-danger'); });
	$('.Cancel').find('a').livequery(function() { 	$(this).addClass('btn btn-danger'); });
	
	// Flyout Menus
	$('.MenuItems').toggleClass('MenuItems dropdown-menu');
	$('.MenuItems').livequery(function() {
		$(this).toggleClass('MenuItems dropdown-menu');
	});
	$('.FlyoutMenu').toggleClass('FlyoutMenu dropdown-menu');
	$('.FlyoutMenu').livequery(function() {
		$(this).toggleClass('FlyoutMenu dropdown-menu');
	});
	
	</script>{/literal}
	
</body>
</html>