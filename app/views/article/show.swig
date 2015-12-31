{% extends '../layout.swig' %}

{% block content %}

	<div class="row">
		<h1>{{ article.title }}</h1>
		<h5>{{ article.createdAt|date('Y-m-d') }}</h5>
		{{ article.text|safe }}


		<a class="button button-primary" href="/">Home</a>
		<a class="button" href="/article/{{ article.id }}/edit">Edit Post</a>
	</div>

{% endblock %}
