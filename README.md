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
	1. [Bootswatches](#bootswatches)
	2. [Embedding](#embedding)
5. [Compatibility](#compatibility)


Demo
----

A demo and support forums can be found here: http://vanilla.ungdomsrod.dk/

As a lot of hours has gone into this project, please consider making a small donation at the support forums. Thanks!


Requirements
------------

This theme is currently only compatible with the 2.0 branch of Vanilla. A version for the 2.1 branch is in the making.


Installation
------------

#### 1. Update of the CORE jQuery-library is REQUIRED

Locate /js/library/jquery.js and replace the contents of the file with the latest version of the jQuery library found here: http://jquery.com/

As Bootstrap relies on the latest version of jQuery, this step is very important. Without the latest version of jQuery the theme might seem like it works as it's supposed to, but it's all lies! Lol, the point is that stuff like dropdowns and modals won't work unless you're using the latest version of jQuery.

#### 2. Match file paths in default.master.tpl

Match file paths in default.master.tpl
Make sure that the JS, CSS and LESS calls in views/default.master.tpl matches your folder structure. This is necessary if you have installed Vanilla in any other directory than the root directory on your server.

The default structure is `src="/themes/VanillaBootstrap/..."` but if you have installed Vanilla in say a directory called "forum" you'd need to change the calls to: `src="/forum/themes/VanillaBootstrap/..."`.

Make sure to include the first `/`, otherwise the files won't load correctly on pages other than your home page.

For a complete example, take a look at the code below. Here we've installed Vanilla in a directory called "vanillaforum":

	<!-- LESS CSS and Prettify
	================================================== -->
	 	
	<link rel="stylesheet/less" type="text/css" href="/vanillaforum/themes/VanillaBootstrap/design/less/main.less">
	<link rel="stylesheet" type="text/css" href="/vanillaforum/themes/VanillaBootstrap/design/prettify/prettify.css">
	 
	<!-- Javascript
	================================================== -->
		
	<script type="text/javascript" src="/vanillaforum/themes/VanillaBootstrap/js/bootstrap.less.js"></script>
	<script type="text/javascript" src="/vanillaforum/themes/VanillaBootstrap/js/bootstrap.main.js"></script>
		
	<script type="text/javascript" src="/vanillaforum/themes/VanillaBootstrap/js/plugin.autosize.js"></script>
		
	<script type="text/javascript" src="/vanillaforum/themes/VanillaBootstrap/js/vanilla.main.js"></script>
		
	<!-- Google Prettify
	================================================== -->
	
	<script type="text/javascript" src="/vanillaforum/themes/VanillaBootstrap/design/prettify/prettify.js"></script>
				
Remember that you don't need to include the actual url of your website in the path, just make the path relative to your root directory.

__NB:__ If you've installed Vanilla on a subdomain, then you won't need to include the name of the directory in which your subdomain exists. Although if you've installed it on subdomain, I suspect you know what you're doing anyway!

#### 3. Use of Markdown is HIGHLY recommended

Add the following line to conf/config.php:
	
	$Configuration['Garden']['InputFormatter'] = 'Markdown';


Features
--------

#### Styling

This theme comes with a custom.less found in the design/less directory which you can use to override the styles of the core theme. Also, if you are having trouble with styles from the core Vanilla stylesheet interfering with your customizations, locate and delete the conflicting styles found is the style.css stylesheet.

_"But I hate LESS! I want to use CSS instead…"_ No problem! Just add a custom.css file to the design directory and put all your customizations here instead.

At the moment, there's a skin included in main.less which adds the Apple-style linen texture background. Just follow the instructions in main.less found in the design/less directory if you want to use this skin.

#### Bootswatches

In the main.less file found in the design/less directory there's a section called `// Bootswatches.` Here you'll see two lines of less which imports the included Bootswatches. By default it's set to "Vanilla" but you can change this part of the import url to match any of the 6 other Bootswatches found in the swatches directory. Say you wanted to use the United swatch, your code would look like this:

	// Bootswatches
	// -------------------------------------------------//
 
	@import "swatches/United/variables.less";
	@import "swatches/United/bootswatch.less";

#### Embedding

This theme has a special embed.less file, which allows it to be easily embedded. Follow the instructions in main.less found in the design/less directory if you want to use the embed.less stylesheet.


Compatibility
-------------

This theme includes a bunch of LESS files for specialized plugin compatibility. You can find more information about these in the main.less file found in the design/less directory.