const express = require('express');
const bodyParser = require('body-parser');
const db = require('../database/index.js');

let app = express();
// let port = process.env.PORT || 3047;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(__dirname + '/public'));
app.use(express.static(__dirname + '/client/dist'));


app.get('/biz/:restaurant/info', (req, res) => {
  db.searchInfo(restaurant, (err, data) => {
    if (err) {
      res.status(400).json({ result: 'failed' });
    }
    res.status(200).json(data);
  });
});

app.get('/biz/:restaurant/hours', (req, res) => {
  db.searchHours(restaurant, (err, data) => {
    if (err) {
      res.status(400).json({ result: 'failed' });
    }
    res.status(200).json(data);
  });
});


app.listen(3047, () => {
  console.log(`Listening to port 3047`);
});