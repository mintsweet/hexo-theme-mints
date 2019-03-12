<!doctype html>
<html lang="{{ config.language }}">
<head>
  {% include '_partial/head.swig' %}
  <title>{% block title %}{% endblock %}</title>
</head>
<body>
  {% include '_partial/mobile.swig' %}

  <div class="container" id="main">
    <div class="layout">
      {% include '_partial/nav.swig' %}
      {% block content %}{% endblock %}
      {% include '_partial/footer.swig' %}
    </div>
  </div>

  {% include '_script/cold.swig' %}
</body>
</html>
