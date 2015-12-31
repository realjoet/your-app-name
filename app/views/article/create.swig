{% extends '../layout.swig' %}

{% block content %}

	<div class="row">

	<form action="/article/{{ article.id }}/create" method="post">
		
		<div class="columns twelve">
		<label for="title">Blog Title</label>
		<input class="u-full-width" type="text" name="title">
		</div>

		<label for="text">Blog Text</label>
  		<textarea class="u-full-width" name="text" cols="80"></textarea>
		<input class="button-primary" type="submit" value="Submit">
  	</form>
  	</div>

{% endblock %}
