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

## myapp/app/includes/_MODULE.*

Here goes the .php, .html, .py or whatever needed to execute the module.

## myapp/app/index.php (.php version)

Add the following:

	include 'app/includes/_MODULE.*';

*module_install.sh* SHOULD do it.

## app/index.* (jekyll version)

Add the following:

	{% include _MODULE.* %}

*module_install.sh* SHOULD do it.

# Element structure

## frankenstein/modules/_MODULE

### ./_MODULE_css.scss

Move it to myapp/scss/modules/_MODULE_css.scss

*module_install.sh* does it.

### ./_MODULE.*

Move it to myapp/app/includes/_MODULE.*

*module_install.sh* does it.

### ./install_module.sh

	 #!/bin/bash
	module="name_of_the_module"
	app_path="path_to_app"
	priotity="set priority to decide what comes first and last"
	cp $module_css.scss $app_path/scss/modules/
	cp $module.* $app_path/app/includes/
	echo "@import 'modules/$module_css.scss'" >> $app_path/scss/style.scss 
	##needs test
	#sed -i '$priotityi\include 'app/includes/_MODULE.*';' index.php


