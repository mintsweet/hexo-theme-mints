<div class="mobile-navbar" id="mobileNavbar">
  <div class="mobile-navbar-logo">
    <a href="{{ url_for('.') }}" class="logo">{{ config.title }}</a>
  </div>
  {% if theme.isHome.exist %}
  <div class="mobile-navbar-home">
    <a href="{{ theme.isHome.url }}">
      <i class="iconfont">&#xe600;</i>
    </a>
  </div>
  {% endif %}
  <div class="mobile-navbar-menu" id="menuBar">
    <span></span>
    <span></span>
    <span></span>
  </div>
</div>

<div class="mobile-menu" id="mobileMenu">
  <ul class="mobile-menu-list">
  {% for name,path in theme.menu %}
    <li class="mobile-menu-item">
      {% set itemName = __('menu.' + name.toLowerCase()) %}
      <a href="{{ url_for(path) }}">
        {% if itemName.startsWith('menu') %}
          {{ name }}
        {% else %}
          {{ itemName }}
        {% endif %}
      </a>
    </li>
  {% endfor %}
  </ul>
</div>