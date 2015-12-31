var express = require('express'),
  router = express.Router(),
  mongoose = require('mongoose'),
  Article = mongoose.model('Article');

module.exports = function (app) {
  app.use('/', router);
};

router.get('/', function (req, res, next) {
  Article.find({}, null, {createdAt: 'asc'}, function (err, articles) {
    if (err) return next(err);
    res.render('article/list', {
      title: 'BDW Blog',
      articles: articles
    });
  });
});
