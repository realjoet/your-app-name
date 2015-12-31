<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width">
  <title>{{ title }}</title>
  <link rel="stylesheet" href="/css/style.css">
  {% if ENV_DEVELOPMENT %}
    <script src="http://localhost:35729/livereload.js"></script>
  {% endif %}
</head>
<body>

    <header class="u-full-width">
      <a href="/"><h1>{{ title }}</h1></a>
      <h5>Sample Blog for Class</h5>
    </header>

	   <div class="container">
    {% block content %}{% endblock %}
    </div>


    <footer class="u-full-width">
        <a class="button primary-button" href="/article">Create New Post</a>
    </footer>

</body>
</html>
