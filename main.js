//load hhtp module
var http = require('http')

//configure the http server 
var server = http.createServer(function(req, res) {
    res.writeHead(200, {'Content-Type': 'text/plain'})
    res.end('Hello Dipika\n')


});

//listen on port 8000
server.listen(8000);
console.log('Node.js server is running at http://127.0.1:8000/');

