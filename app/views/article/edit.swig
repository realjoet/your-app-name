{% extends '../layout.swig' %}

{% block content %}

	<div class="row">

	<form action="/article/{{ article.id }}/update" method="post">
		
		<div class="columns twelve">
			<label for="title">Blog Title</label>
			<input class="u-full-width" type="text" name="title" value="{{ article.title }}">
		</div>

		<label for="text">Blog Text</label>
  		<textarea class="u-full-width" name="text" cols="80">{{ article.text }}</textarea>
		<input class="button-primary" type="submit" value="Update">
		<a class="button" href="/">Cancel</a>
		<a class="button" href="/article/{{ article.id }}/delete">Delete</a>

  	</form>
  	</div>

{% endblock %}
