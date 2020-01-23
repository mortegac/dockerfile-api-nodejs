
const express = require('express');
const app = express();

app.get('/', function (req, res) {
  res.send('Bienvenidos a WorkShop Cencosud!');
});

app.listen(8080, function () {
  console.log('Example app listening on port 8080!');
});