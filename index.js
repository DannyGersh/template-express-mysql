var express = require('express');
var mysql = require('mysql2');
var app = express();

const con = mysql.createConnection({
  host: 'localhost',
  port: '30306',
  user: 'root',
  password: '123',
  //database: 'test'
});

con.connect(function(err) {
  if (err) throw err;
  else app.listen(8000);
  console.log("mysql connected successfully");
});

app.get('/', function(req, res){
   res.send("GGGGGG");
});





