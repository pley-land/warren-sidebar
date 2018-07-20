const express = require('express');
const bodyParser = require('body-parser');

let app = express();
let port = process.env.PORT || 3047;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(__dirname + '/public'));
app.use(express.static(__dirname + '/client/dist'));

/*
// Change where needed

app.get('/repos', function(req, res) {
  // TODO - your code here!
  // This route should take the github username provided
  // and get the repo information from the github API, then
  // save the repo information in the database
  helpers.getReposByUsername(req.body.data, function(git) {
    Save.save(git);
  });  
  res.end("posted");
});

app.get('/repos', function(req, res) {
  // TODO - your code here!
  // This route should send back the top 25 repos
  Save.findRepo(function(repos) {
    res.json(repos);
  });  
  // res.end("got");
});
*/

app.listen(port, () => {
  console.log(`Listening to port ${port}`);
});