{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}

{% block title %} {{ config.title }} {% endblock %}

{% block content %}
  <div class="post-list" id="post-list">
    {% for post in page.posts %}
      {{ post_template.render(post) }}
      <hr />
    {% endfor %}
  </div>
  {% include '_partial/pagination.swig' %}
{% endblock %}
