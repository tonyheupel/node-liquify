var fs = require('fs');

var requiresString = '';
var tagDir = __dirname + "/../node_modules/liquid-node/lib/liquid/tags";

var tagDirRelativeToLiquify = "./liquid-node/lib/liquid/tags";

fs.readdirSync(tagDir).forEach(function(file) {
  if (/\.(coffee|js|node)$/.test(file)) {
    var fullFile = tagDirRelativeToLiquify + "/" + file;
    requiresString += "require '" + fullFile + "'\n";
  }
});

var template = fs.readFileSync(__dirname + "/liquify.coffee.template", 'utf-8');
var module = template.replace('{{ tags }}', requiresString);

fs.writeFileSync(__dirname + "/node_modules/liquify.coffee", module, 'utf-8');

  
