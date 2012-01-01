# patch missing util features in browserify and move 
# liquify module into node_modules so it can be "required"
# by browserify
cp -fR ./support/node_modules/ ./node_modules/

# browserify to liquify.js
browserify --require liquify -o ./public/javascripts/liquify.js 

# patch the final output file (using tempfile nl.js)
echo 'global = window;\n' > public/javascripts/nl.js 
cat public/javascripts/liquify.js >> public/javascripts/nl.js
mv public/javascripts/nl.js public/javascripts/liquify.js

# minify/obfuscate liquify.js
java -jar ./support/closure.jar --js ./public/javascripts/liquify.js --js_output_file ./public/javascripts/liquify.min.js