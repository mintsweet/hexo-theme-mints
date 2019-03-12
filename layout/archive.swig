{% extends '_layout.swig' %}
{% import '_macro/archive.swig' as archive_template %}

{% block title %}
  {% if page.archive %}
    {{ __('title.archive') }} || {{ config.title }}
  {% elif page.category %}
    {{ __('title.categories') }}:{{ page.category }} || {{ config.title }}
  {% elif page.tag %}
    {{ __('title.tags') }}:{{ page.tag }} || {{ config.title }}
  {% endif %}
{% endblock %}

{% block content %}
  {{ archive_template.render() }}
{% endblock %}
