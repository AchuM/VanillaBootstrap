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

#### 2. Match file paths in default.master.tpl

Make sure that the JS, CSS and LESS calls in default.master.tpl matches your folder structure. The default structure is http://example.com/themes/VanillaBootstrap, but if you use another structure, please correct the paths or pages won't load.

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