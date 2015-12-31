

var express = require('express'),
  config = require('./config/config'),
  glob = require('glob'),
  mongoose = require('mongoose'),
  bootstrap = require('./config/bootstrap');

mongoose.connect(config.db);
var db = mongoose.connection;
db.on('error', function () {
  throw new Error('unable to connect to database at ' + config.db);
});

db.once('open', function() {
	bootstrap.populateArticles(mongoose);
});

var models = glob.sync(config.root + '/app/models/*.js');
models.forEach(function (model) {
  console.log('model', model);
  require(model);
});
var app = express();

require('./config/express')(app, config);

app.listen(config.port);

