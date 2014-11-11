frankenstein
============

This is a first scratch of a *module protocol* for Frankenstein.

# Requirements

## Gulp, grunt, bower, yeoman, jekyll !?

Details go here.

# Element dynamics

## myapp/scss/modules/_MODULE_css.scss

The specific css of each module should be put here.

## myapp/scss/style.scss

Add the following:

	@import 'modules/_MODULE_css.scss'

*module_install.sh* does it.

## myapp/app/includes/_MODULE_include.php

Here goes the .php, .html, .py or whatever needed to execute the module.

Let's use .php as a standard for now.

## myapp/app/index.php (.php version)

Add the following:

	include 'app/includes/_MODULE.*';

*module_install.sh* SHOULD do it.

## app/index.* (jekyll version)

Add the following:

	{% include _MODULE.php %}

*module_install.sh* SHOULD do it.

# Element structure

## frankenstein/modules/_MODULE

### ./_MODULE_css.scss

Move it to myapp/scss/modules/_MODULE_css.scss

*module_install.sh* does it.

### ./_MODULE_include.php

Move it to myapp/app/includes/_MODULE.*

*module_install.sh* does it.

### ./install_module.sh

	 #!/bin/bash
	module="name_of_the_module"
	app_path="path_to_app"
	priotity="set priority to decide what comes first and last"
	cp $_MODULE_css.scss $app_path/scss/modules/$module && ( echo Success moving .scss ; ) || ( echo Failed moving .scss; )
	cp $_MODULE_include.php $app_path/app/includes/$module.php && ( echo Success moving include file ; ) || ( echo Failed moving include file; )
	echo "@import 'modules/$module_css.scss'" >> $app_path/scss/style.scss && ( echo Success writing style.scss ; ) || ( echo Failed writing .scss; )
	##needs test
	#sed -i '$priotityi\include 'app/includes/$module.php';' index.php && ( echo Success writing index file ; ) || ( echo Failed writing index file; )


