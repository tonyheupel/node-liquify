# patch missing util features in browserify
cp -fR ./support/node_modules/ ./node_modules/

# browserify to liquify.js
browserify --require liquify -o ./public/javascripts/liquify.js 

# patch the final output file (using tempfile nl.js)
echo 'global = window;\n' > public/javascripts/nl.js 
cat public/javascripts/liquify.js >> public/javascripts/nl.js
mv public/javascripts/nl.js public/javascripts/liquify.js