# Liquify

Liquify is a Node.js module that creates a client-side version of the Liquid Templating language (see http://github.com/shopify/liquid) for use with JavaScript in the browser, available as both plain JavaScript (public/javascripts/**liquid.js**) and as minified JavaScript (public/javascripts/**liquid.min.js**).  Please see the [liquid.js project](http://github.com/tchype/liquid.js) for the latest versions and usage.

The Liquid.js library is a client-side version of [Marcel Jackwerth's](http://github.com/sirlantis) [liquid-node](http://github.com/sirlantis/liquid-node), which is a port of Tobias Lutke's Liquid templating language, originally implemented in Ruby, plus Partials that I created in the [node-liquid-partial project](https://github.com/tchype/node-liquid-partial) to help keep templates DRY.

_Note: This is currently the result of less than a week of work, so let me know if you find it useful or would like to suggest changes!_

## Usage

### Client-Side
See the [liquid.js project](https://github.com/tchype/liquid.js) for details on how to use Liquid.js that this project generates.


### Server-Side
You may regenerate the liquid.js files to the latest version that I support from _liquid-node's_ capabilities by simply installing the package from NPM:

```shell
$ npm install liquify
```

Or by installing the latest node package from git directly:

```shell
$ npm install git@github.com/tchype/node-liquify
```

You can see it working by running the sample page that uses liquify to render it's markup:

```shell
$ node ./node_modules/liquify/app.js
Server running at http://127.0.0.1:8125/
$ open http://127.0.0.1:8125
```

## Acknowledgements
I have to take a minute to recognize the efforts of others.

The huge, gigantic **THANK YOU** has to go to [sirlantis (Marcel Jekwerth)](http://github.com/sirlantis) for even taking on the task of
porting Liquid into node.  Without his work on this front, I probably would have given up trying to implement it in purely
client-side JavaScript at some point.  Instead, his previous efforts and eagerness to accept pull requests and ideas for
liquid-node made it simply a 3 day weekend project to get something working!

Also, a big thank you goes out to [substack](http://github.com/substack) for [browserify](http://github.com/substack/node-browserify) as
well as the overall contributions to node and Open Source.  Thanks!

Finally, the biggest thank you (as well as an "_I'm sorry for keeping my nose in the computer all weekend_") has to go to my lovely wife and
my silly, wonderful boys.  Thanks for being patient with me!!

