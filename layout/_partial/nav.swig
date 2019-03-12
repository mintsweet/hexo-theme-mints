<ul class="menu">
  {% if theme.isHome.exist %}
    <li class="menu-item">
      <a href="{{ theme.isHome.url }}" class="iconfont">&#xe600;</a>
      <span>{{ config.title }}</span>
    </li>
  {% endif %}
  {% for name,path in theme.menu %}
    <li class="menu-item">
      <a href="{{ url_for(path) }}" class="iconfont icon-{{ name }}"></a>
      {% set itemName = __('menu.' + name.toLowerCase()) %}
      {% if itemName.startsWith('menu') %}
        <span>{{ name }}</span>
      {% else %}
        <span>{{ itemName }}</span>
      {% endif %}
    </li>
  {% endfor %}
</ul>
