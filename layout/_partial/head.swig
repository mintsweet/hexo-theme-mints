<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no,minimal-ui">
{# Disable apple toolbar and menubar #}
<meta name="apple-mobile-web-app-capable" content="yes">
{# Setting topbar background-color  black-translucent #}
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
{# Setting screen titie #}
<meta name="apple-mobile-web-app-title" content="{{ config.title }}">
{# Disable number,email,address to url #}
<meta name="format-detection" content="telephone=no,email=no,address=no">
{# Setting UC portrait #}
<meta name="screen-orientation" content="portrait">
{# Setting UC full screen #}
<meta name="full-screen" content="yes">
{# Setiing UC mode #}
<meta name="browsermode" content="application">
{# Setting QQ portrait #}
<meta name="x5-orientation" content="portrait">
{# Setting QQ full screen #}
<meta name="x5-fullscreen" content="true">
{# Setiing QQ mode #}
<meta name="x5-page-mode" content="app">
{# Disable Baidu transformmation #}
<meta http-equiv="Cache-Control" content="no-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">
{# Setting author #}
<meta name="author" content="{{ config.author }}">
{# Setting website keywords #}
{% if page.keywords %}
  <meta name="keywords" content="{{ page.keywords }}">
{% elif page.tags.length and page.tags %}
  <meta name="keywords" content="{% for tag in tags%}{{ tag.name }},{% endfor %}">
{% elif theme.keywords %}
  <meta name="keywords" content="{{ theme.keywords }}">
{% endif %}
{# Setting website description #}
{% if page.description %}
  <meta name="description" content="{{ page.description }}">
{% elif page.title %}
  <meta name="description" content="{{ page.title }}">
{% elif config.description%}
  <meta name="description" content="{{ config.description }}">
{% endif %}
{# Setting website favicon #}
{% if theme.favicon %}
  {{ favicon_tag(theme.favicon) }}
{% endif %}
{{ css('css/style.css') }}
