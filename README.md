frankenstein
============

This is a *very first* scratch of a *module protocol* for Frankenstein. It should be taken as a provisional first effort to avoid waste of time and energy in future projects, rather then a concrete and final solution. Probably all of it should be implemented with better standards in the long run.

# Requirements

## Gulp, grunt, bower, yeoman, jekyll !?

Details go here.

# Element dynamics

## myapp/scss/modules/_MODULE.scss

The specific css of each module should be put here.

*install_module.sh* does it.

## myaapp/scripts/_MODULE.js

The specific js of each module should be put here.

## myapp/app/includes/modules/_MODULE.php

Here goes the .php, .html, .py or whatever needed to execute the module.

Let's use .php as a standard for now.

# App dynamics

## myapp/scss/style.scss

Add the following:

	@import 'modules/_MODULE.scss'

## myapp/app/includes/body.php (.php version)

Add the following:

	include 'app/includes/_MODULE.php';

*install_module.sh* SHOULD do it.

Let's start by using *.php* as a standard format to avoid future problems and have simply flexibility for the moment.

## app/_templates/default.html (jekyll version)

Add the following:

	{% include _MODULE.php %}

*install_module.sh* SHOULD do it.

## myapp/app/includes/footer.php (.php version)

Add the following:

	<script src="scripts/$_MODULE.js" type="text/javascript"></script>"

*install_module.sh* SHOULD do it.

# Standard element structure

## frankenstein/modules/_MODULE

### ./_MODULE.scss

Copy it to myapp/scss/modules/_MODULE_css.scss

*install_module.sh* does it.

### ./_MODULE.js

Copy it to myapp/app/scripts/_MODULE.js

*install_module.sh* does it.

### ./_MODULE.php

Copy it to myapp/app/includes/modules/_MODULE.php

*install_module.sh* does it.

### ./install_module.sh

	#!/bin/bash
	echo "Hi. Im Frankstein!"
	echo "Module name in the app: "
	read module
	echo "Name set to: $module"
	echo "App path:"
	read app_path
	echo "Name set to: $app_path"
	echo "Module priority in the webpage: "
	read priority
	echo "Priority set to: $priority"
	echo "Let's install it!"
	cp $_MODULE.scss $app_path/scss/modules/$module.scss && ( echo Success moving .scss ; ) || ( echo Failed moving .scss; )
	cp $_MODULE.js $app_path/scripts/$module.js && ( echo Success moving .js ; ) || ( echo Failed moving .js; )
	cp $_MODULE.php $app_path/app/includes/modules/$module.php && ( echo Success moving include file ; ) || ( echo Failed moving include file; )
	echo "@import 'modules/$module.scss'" >> $app_path/scss/style.scss && ( echo Success writing style.scss ; ) || ( echo Failed writing .scss; )
	echo "<script src="scripts/$module.js" type="text/javascript"></script>" >> $app_path/app/includes/footer.php && ( echo Success writing footer ; ) || ( echo Failed footer .scss; )
	##needs test
	#sed -i '$priotityi\include 'app/includes/$module.php';' body.php && ( echo Success writing index file ; ) || ( echo Failed writing index file; )

# Standard app structure

## myapp/app/index.php
	include 'includes/head.php';
	include 'includes/body.php';
	include 'includes/footer.php';

### myapp/app/includes/head.php

	<link href="css/style.css" rel="stylesheet">

### myapp/app/includes/body.php

Originally empty. To be filled with modules in the order of their priorities.

Example:

	include 'includes/modules/_MODULE.php';


### myapp/app/includes/footer.php

Originally empty. To be filled with modules's .js .