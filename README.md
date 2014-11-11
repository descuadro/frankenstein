frankenstein
============

This is a first scratch of a *module protocol* for Frankenstein.

# Element dynamics

## myapp/scss/modules/_MODULE.scss

The specific css of each module should be put here.

## myapp/scss/style.scss

Add the following:

	@import 'modules/_MODULE.scss'

## myapp/app/includes/_MODULE.*

Here goes the .php, .html, .py or whatever needed to execute the module.

## myapp/app/index.php (.php version)

Add the following:

	include 'app/includes/_MODULE.*';

## app/index.* (jekyll version)

Add the following:

	{% include _MODULE.* %}

# Element structure

## frankenstein/modules/_MODULE

### ./_MODULE.scss

Move it to myapp/scss/modules/_MODULE.scss

### ./_MODULE.*

Move it to myapp/app/includes/_MODULE.*
