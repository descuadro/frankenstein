frankenstein
============

This is a first scratch of a *module protocol* for Frankenstein.

# Requirements

## Gulp, grunt, bower, yeoman, jekyll !?

Details go here.

# Element dynamics

## myapp/scss/modules/_MODULE.scss

The specific css of each module should be put here.

*module_install.sh* does it.

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

*module_install.sh* SHOULD do it.

Let's start by using *.php* as a standard format to avoid future problems and have simply flexibility for the moment.

## app/_templates/default.html (jekyll version)

Add the following:

	{% include _MODULE.php %}

*module_install.sh* SHOULD do it.

## myapp/app/includes/footer.php (.php version)

Add the following:

	<script src="scripts/$_MODULE.js type="text/javascript"></script>"

*module_install.sh* SHOULD do it.

# Element structure

## frankenstein/modules/_MODULE

### ./_MODULE.scss

Move it to myapp/scss/modules/_MODULE_css.scss

*module_install.sh* does it.

### ./_MODULE.js

Move it to myapp/app/scripts/_MODULE.js

*module_install.sh* does it.

### ./_MODULE.php

Move it to myapp/app/includes/modules/_MODULE.php

*module_install.sh* does it.

### ./install_module.sh

	 #!/bin/bash
	echo "Module name in the app: "
	read module
	echo "You entered: $input_variable"
	echo "App path:"
	read app_path
	echo "Module priority in the webpage: "
	read priority
	cp $_MODULE.scss $app_path/scss/modules/$module.scss && ( echo Success moving .scss ; ) || ( echo Failed moving .scss; )
	cp $_MODULE.js $app_path/scripts/$module.js && ( echo Success moving .js ; ) || ( echo Failed moving .js; )
	cp $_MODULE.php $app_path/app/includes/modules/$module.php && ( echo Success moving include file ; ) || ( echo Failed moving include file; )
	echo "@import 'modules/$module.scss'" >> $app_path/scss/style.scss && ( echo Success writing style.scss ; ) || ( echo Failed writing .scss; )
	echo "<script src="scripts/$module.js type="text/javascript"></script>" >> $app_path/app/includes/footer.php && ( echo Success writing footer ; ) || ( echo Failed footer .scss; )
	##needs test
	#sed -i '$priotityi\include 'app/includes/$module.php';' body.php && ( echo Success writing index file ; ) || ( echo Failed writing index file; )

# Standard structure

## index.php
	include 'app/includes/head.php';
	include 'app/includes/body.php';
	include 'app/includes/footer.php';

### head.php

<link href="css/style.css" rel="stylesheet">

### body.php

Originally empty. To be filled with modules in the order of their priorities.

### footer.php

Originally empty. To be filled with modules's .js .