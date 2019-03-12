<div class="footer">
  {% if theme.social %}
    <div class="footer-links">
      {% for name,path in theme.social %}
        {% if path %}
          {% if name != 'envelope' %}
            <a href="{{ url_for(path) }}" class="iconfont icon-{{ name }}" title="{{ name }}" target="_blank"></a>
          {% else %}
            <a href="mailto:{{ path }}" class="iconfont icon-{{ name }}" title="{{ name }}" target="_blank"></a>
          {% endif%}
        {% endif %}
      {% endfor %}
    </div>
  {% endif%}

  <div class="footer-copy">
    <p>
      {{ __('footer.powered', '<a href="https://hexo.io/" target="_blank">Hexo</a>')}}
      {{ __('footer.theme') }} - <a href="https://github.com/yudaren007007/hexo-theme-cold" target="_blank">Cold</a>
    </p>
    <p>
      {% set current = date(Date.now(), 'YYYY') %}
      &copy;
      {% if theme.since and theme.since != current %}
        {{ theme.since }} -
      {% endif %}
      {{ current }}
      <i class="iconfont">&#xe692;</i>
      <span>{{ config.author }}</span>
    </p>
  </div>
</div> 