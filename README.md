# Liquify

Liquify is a Node.js module that creates a client-side version of the Liquid Templating language (see http://github.com/shopify/liquid) for use with JavaScript in the browser, available as both plain JavaScript (public/javascripts/**liquify.js**) and as minified JavaScript (public/javascripts/**liquify.min.js**).

This library is a client-side version of [Marcel Jackwerth's](http://github.com/sirlantis) [liquid-node](http://github.com/sirlantis/liquid-node), which is a port of Tobias Lutke's Liquid templating language, originally implemented in Ruby.

_Note: This is currently the result of a 3-day weekend project, so let me know if you find it useful or would like to suggest changes!_

## Usage

### Client-Side
You may simply use the liquify.js/liquify.min.js files in your applications without using the npm module at all.

Reference liquify.js in your page, and start using it!

```html
<html>
  <head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <title>Client-Side Liquid Templates</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	
    <script type="text/javascript" src="./javascripts/liquify.min.js"></script>
    <script type="text/javascript">
      var Liquid = require('liquify');
    </script>
  </head>

  <body>
    <script id="simplewithfilter" type="text/liquid">
      <div>Here is the value of foobar in uppercase: <strong>{{ foobar | upcase }}</strong></div>
    </script>

    <script id="ifblock" type="text/liquid">
      <div>
	Trying out the if block.  If it works, you should see "Hooray!":&nbsp;
	{% if cheer %}
	Hooray!
	{% else %}
	Boo!
	{% endif %}
      </div>
    </script>

    <script type="text/javascript">
      $(function() {
        $('body').append(Liquid.Template.parse($('script#simplewithfilter').html()).render({ foobar: 'bizbuzz'}));
	$('body').append(Liquid.Template.parse($('script#ifblock').html()).render({{ cheer: true }}));
      });
    </script>
  </body>
</html>
```

Results in the following html page:

Here is the value of foobar in uppercase: **BIZBUZZ**

Trying out the if block. If it works, you should see "Hooray!":  Hooray!


### Server-Side
You may update your liquify.js files to the latest version of _liquid-node's_ capabilities by simply installing the package from NPM:

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

The huge, gigantic **THANK YOU** has to go to [sirlantis (Marcel Jekwerth)](http://github.com/sirlanta) for even taking on the task of
porting Liquid into node.  Without his work on this front, I probably would have given up trying to implement it in purely
client-side JavaScript at some point.  Instead, his previous efforts and eagerness to accept pull requests and ideas for
liquid-node have made it simply a 3 day weekend project to get something working!

Also, a big thank you goes out to [substack](http://github.com/substack) for [browserify](http://github.com/substack/node-browserify) as
well as the overall contributions to node and Open Source.  Thanks!

Finally, the biggest thank you (as well as an "_I'm sorry for keeping my nose in the computer all weekend_") has to go to my lovely wife and
my silly, wonderful boys.  Thanks for being patient with me!!

