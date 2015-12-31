module.exports = {


	'populateArticles': function(mongoose){
  		

  		Article = mongoose.model('Article');

		var json = require('./articles');
		console.log('json', json.posts);



	}

};
