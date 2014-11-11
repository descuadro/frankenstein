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
	echo "<script src="scripts/$module.js type="text/javascript"></script>" >> $app_path/app/includes/footer.php && ( echo Success writing footer ; ) || ( echo Failed footer .scss; )
	##needs test
	#sed -i '$priotityi\include 'app/includes/$module.php';' body.php && ( echo Success writing index file ; ) || ( echo Failed writing index file; )
