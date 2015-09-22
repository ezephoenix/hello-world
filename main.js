var express = require('express');

var app = express();
app.use('/static', express.static(__dirname));

app.listen(80, function(){
    console.log('server started on localhost:80');
});