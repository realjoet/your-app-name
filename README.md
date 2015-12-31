# BDW + Express.js

## Goals

1. Launch a website on Heroku
2. Display posts from Medium
3. Add new post from admin
4. Email fans about new posts 


## Week 2
- Load data from JSON file
- Edit/Show/List Blog Posts
- Create Routes and Views
- Update Model to reflect our posts model from week 1

```
$ cd ~/sites
$ mkdir bdw-blog && cd bdw-blog
$ npm install -g yo generator-express
```



### Homework
- Create JSON file of Medium Posts
- Connect Github Account to Heroku
- Add the Mongo DB Add-on to Heroku
- Create Swig templates for home and blog post page



### posts.json
```javascript
{
  "posts": [
    {
       "title":  "item title",
       "description": "use this for the content. It can include html.",
       "url": "http://example.com/article4?this&that",
       "guid": "1123", 
       "categories": ["Category 1","Category 2","Category 3","Category 4"],  
       "author": "Guest Author",  
       "date": "May 27, 2012"
    },
    {
       "title":  "item title",
       "description": "use this for the content. It can include html.",
       "url": "http://example.com/article4?this&that",
       "guid": "1123", 
       "categories": ["Category 1","Category 2","Category 3","Category 4"],  
       "author": "Guest Author",  
       "date": "May 27, 2012"
    }
  ]
}

```
