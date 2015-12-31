{% extends '../layout.swig' %}

{% block content %}

	{% if articles && articles.length > 0 %}
		
		{% for article in articles %}
		<div class="row">
			<a href="/article/{{ article.id }}">
				<h1>{{ article.title }}</h1>
			</a>
			<h5>{{ article.createdAt|date('Y-m-d') }}</h5>
		  	{{ article.text|safe }}
		  	<a class="button" href="/article/{{ article.id }}/edit">Edit Post</a>
	  	</div>
	  	{% endfor %}

	{% else %}
		<div class="row">
			You have no articles in your blog.
		</div>
	{% endif %}


{% endblock %}
