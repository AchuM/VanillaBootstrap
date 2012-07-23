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

				<a class="brand" href="#">VanillaBootstrap</a>
 
				<div class="nav-collapse">
					<ul class="nav">
						<li class="dropdown">
							<a id="drop1" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Community <b class="caret"></b></a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
								<!--{dashboard_link}-->
								{discussions_link}
								{activity_link}
								<!--{inbox_link}-->
								<!--{bookmarks_link}-->
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
	
	{asset name="Content"}
	
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
	
</body>
</html>