var http = require('http');
var fs = require('fs');

http.createServer(function (request, response) {

    //console.log('request starting...');

	var filename = './public' + (request.url == '/' ? '/index.html' : request.url);
	//console.log(request.url);
	//console.log(filename);
    fs.readFile(filename, function(error, content) {
        if (error) {
			console.dir(error);
            response.writeHead(404);
            response.end();
        }
        else {
			var type = filename.substring(filename.length - 3, filename.length) == '.js' ? 'text/javascript' : 'text/html';
            response.writeHead(200, { 'Content-Type': type });
            response.end(content, 'utf-8');
        }
    });

}).listen(8125);

console.log('Server running at http://127.0.0.1:8125/');