---
layout: archive
title: "Research"
permalink: /research/
author_profile: false
---

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for post in site.research reversed %}
  <div class="list__item">
    <article class="archive__item" itemscope itemtype="https://schema.org/CreativeWork">
      <h2 class="archive__item-title" itemprop="headline">{{ post.title }}</h2>

      <p><i>{{ post.venue }}</i>, {{ post.date | default: "1900-01-01" | date: "%Y" }}</p>

      {% if post.excerpt %}
        <p class="archive__item-excerpt" itemprop="description">{{ post.excerpt | markdownify }}</p>
      {% endif %}

      {% if post.citation %}
        <p>Recommended citation: {{ post.citation }}</p>
      {% endif %}

      {% if post.paperurl %}
        <p><a href="{{ post.paperurl }}"><u>Abstract</u></a></p>
      {% endif %}
    </article>
  </div>
{% endfor %}
