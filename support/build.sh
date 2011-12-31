# patch missing util features in browserify
cp -f ./support/browserify-builtins-util.js ./node_modules/browserify/builtins/util.js

# browserify to liquify.js
browserify liquify.coffee -o ./public/javascripts/liquify.js 

# patch the final output file (using tempfile nl.js)
echo 'global = window;\n' > public/javascripts/nl.js 
cat public/javascripts/liquify.js >> public/javascripts/nl.js
mv public/javascripts/nl.js public/javascripts/liquify.js