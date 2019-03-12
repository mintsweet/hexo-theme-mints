{% extends '_layout.swig' %}

{% block title %} {{ __('title.tags') }} || {{ config.title }} {% endblock %}

{% block content %}
  <div class="tags">
    <div class="tag-title">
      {{ _p('counter.tags', site.tags.length) }}
    </div>
    <div class="tag-cloud">
      {{ tagcloud({min_font: 14, max_font: 28, amount: 100, orderby: 'count'}) }}
    </div>
  </div>
{% endblock %}