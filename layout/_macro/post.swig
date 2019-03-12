{% macro render(post) %}
  <article class="post">
    <h1 class="post-title">
      {% if is_home() %}
        <a href="{{ url_for(post.path) }}">
          {{ post.title }}
        </a>
      {% else %}
        {{ post.title }}
      {% endif %}
    </h1>
    <div class="post-pub">
      <div class="post-date">
        <i class="iconfont">&#xe64d;</i>
        <span>{{ date(post.date, 'YYYY-MM-DD') }}</span>
      </div>
      <div class="post-cat">
        {% for cat in post.categories %}
          <a class="cat" href="{{ url_for(cat.path) }}">
            <i class="iconfont">&#xe603;</i>
            <span>{{ cat.name }}</span>
          </a>
        {% endfor %}
      </div>
    </div>

    <div class="post-content">
      {% if is_home() %}
        {% set excerpt='' %}
        {% if post.description %}
          {% set excerpt = '<p>' + post.description + '</p>' %}
        {% elif post.excerpt %}
          {% set excerpt = post.excerpt %}
        {% endif %}
      {% endif %}

      {% if excerpt %}
        {{ excerpt }}
      {% else %}
        {{ post.content }}
      {% endif %}
    </div>

    {% if is_home() %}
      <a href="{{ url_for(post.path) }}" class="read-more">{{ __('posts.readmore') }}</a>
    {% else %}
      <div class="post-tags">
        {% for tag in post.tags %}
          <a href="{{ url_for(tag.path) }}" class="tag"><i class="iconfont">&#xe69f;</i>{{ tag.name }}</a>
        {% endfor %}
      </div>
    {% endif %}

  </article>
{% endmacro %}
