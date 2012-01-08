# patch missing util features in browserify and move
# liquify module into node_modules so it can be "required"
# by browserify
cp -fR ./support/node_modules/ ./node_modules/

# move node-liquid-partial to liquid-partial until it's referred to from npm
mv ./node_modules/node-liquid-partial ./node_modules/liquid-partial

# browserify to liquify.js
browserify --require liquify -o ./public/javascripts/liquid.js

# patch the final output file (using tempfile nl.js)
echo 'global = window;\n' > public/javascripts/final-liquid.js
cat public/javascripts/liquid.js >> public/javascripts/final-liquid.js
mv public/javascripts/final-liquid.js public/javascripts/liquid.js

# minify/obfuscate liquify.js
java -jar ./support/closure.jar --js ./public/javascripts/liquid.js --js_output_file ./public/javascripts/liquid.min.js