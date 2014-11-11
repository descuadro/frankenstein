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

## myapp/app/includes/_MODULE.php

Here goes the .php, .html, .py or whatever needed to execute the module.

Let's use .php as a standard for now.

# App dynamics

## myapp/scss/style.scss

Add the following:

	@import 'modules/_MODULE_css.scss'

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

### ./_MODULE.scss

Move it to myapp/scss/modules/_MODULE_css.scss

*module_install.sh* does it.

### ./_MODULE.js

Move it to myapp/app/scripts/_MODULE.js

*module_install.sh* does it.

### ./_MODULE.php

Move it to myapp/app/includes/_MODULE.php

*module_install.sh* does it.

### ./install_module.sh

	 #!/bin/bash
	module="name_of_the_module"
	app_path="path_to_app"
	priotity="set priority to decide what comes first and last"
	cp $_MODULE.scss $app_path/scss/modules/$module.scss && ( echo Success moving .scss ; ) || ( echo Failed moving .scss; )
	cp $_MODULE.js $app_path/scripts/$module.js && ( echo Success moving .js ; ) || ( echo Failed moving .js; )
	cp $_MODULE.php $app_path/app/includes/$module.php && ( echo Success moving include file ; ) || ( echo Failed moving include file; )
	echo "@import 'modules/$module_css.scss'" >> $app_path/scss/style.scss && ( echo Success writing style.scss ; ) || ( echo Failed writing .scss; )
	echo "scripts/#module.js" >> $app_path/app/includes/footer.php && ( echo Success writing footer ; ) || ( echo Failed footer .scss; )
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



