var express = require('express');
var fs = require('fs');

var app = express();
app.use(express.static(__dirname));

app.get('/', function(req, res){
    fs.readFile("index.html", "utf8", function(err,data){
        res.send(data);
    })
});

app.listen(80, function(){
    console.log('server started on localhost:80');
});