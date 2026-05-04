---
layout: archive
title: "Projects"
permalink: /projects/
author_profile: false
---

<ul class="home__advise">
  {% assign projects = site.projects | sort: 'date' | reverse %}
  {% for project in projects %}
    <li class="home__advise-item reveal" id="{{ project.title | slugify }}">
      <div class="home__advise-head">
        <span class="home__advise-company">
          {% if project.codeurl %}<a href="{{ project.codeurl }}" target="_blank" rel="noopener">{{ project.title }}</a>{% else %}{{ project.title }}{% endif %}
        </span>
        <span class="home__advise-period">{{ project.date | date: '%b %Y' }}</span>
      </div>

      {% if project.source %}
        <div class="home__advise-meta">{{ project.source }}</div>
      {% endif %}

      <div class="project__body">
        {{ project.content }}
      </div>
    </li>
  {% endfor %}
</ul>
