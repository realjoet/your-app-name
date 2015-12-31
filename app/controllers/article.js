var express = require('express'),
  router = express.Router(),
  mongoose = require('mongoose'),
  Article = mongoose.model('Article');


module.exports = function (app) {
  app.use('/article', router);
};


router.get('/', function (req, res, next) {

  res.render('article/create', {
      title: 'BDW Blog'
    });

});


router.post('/create', function (req, res, next) {

  var article = {
    title: req.body.title,
    url: req.body.url,
    text: req.body.text
  };

  Article.create(article, function (err, articles) {
    if (err) return next(err);
    res.redirect('/');
  });
});



router.get('/:article', function (req, res, next) {

  var id = req.param.article;

  Article.findOne({ id: id }, function (err, article) {
    if (err || !article) return next(err);
    res.render('article/show', {
      title: 'BDW Blog',
      article: article
    });
  });
});


router.get('/:article/edit', function (req, res, next) {

  var id = req.param.article;

  Article.findOne({ id: id }, function (err, article) {
    if (err) return next(err);
    res.render('article/edit', {
      title: 'BDW Blog',
      article: article
    });
  });
});

router.post('/:article/update', function (req, res, next) {

  var id = req.param.article;

  var article = {
    title: req.body.title,
    text: req.body.text,
    updatedAt: Date.now()
  };

  Article.findOneAndUpdate({ id: id }, article, function (err, article) {
    if (err) return next(err);
    res.redirect('/article/' + article.id);
  });
});

router.get('/:article/delete', function (req, res, next) {

  var id = req.params.article;

  Article.remove({ _id: id }, function (err, article) {
    if (err) return next(err);
    console.log('article', article);
    res.redirect('/');
  });
});



