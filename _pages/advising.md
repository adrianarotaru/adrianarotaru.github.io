---
layout: archive
title: "Advising &amp; angel investing"
permalink: /advising/
author_profile: false
---

{% include base_path %}

<p class="advise-lede">
  Selected engagements with early-stage founders in drone delivery, autonomous systems, and healthtech.
  Common threads: building engineering teams, navigating regulation and certification, market expansion
  across EU / US / Asia, and shipping first end-to-end pilots into safety-critical environments.
</p>

<ul class="home__advise">
  {% for item in site.data.advising.engagements %}
    <li class="home__advise-item" id="{{ item.company | slugify }}">
      <div class="home__advise-head">
        <span class="home__advise-company">
          {% if item.url %}<a href="{{ item.url }}" target="_blank" rel="noopener">{{ item.company }}</a>{% else %}{{ item.company }}{% endif %}
          {% if item.linkedin %}<a class="home__advise-ext" href="{{ item.linkedin }}" target="_blank" rel="noopener" aria-label="{{ item.company }} on LinkedIn">LinkedIn</a>{% endif %}
        </span>
        <span class="home__advise-period">{{ item.period }}</span>
      </div>
      <div class="home__advise-meta">
        {{ item.domain }}{% if item.location %} · {{ item.location }}{% endif %}
      </div>

      {% if item.founders %}
        <div class="home__advise-line">
          <span class="home__advise-label">Founders</span>
          <span class="home__advise-body">
            {% for f in item.founders %}{% unless forloop.first %}, {% endunless %}{% if f.linkedin %}<a href="{{ f.linkedin }}" target="_blank" rel="noopener">{{ f.name }}</a>{% else %}{{ f.name }}{% endif %}{% if f.role %} <span class="home__advise-role">— {{ f.role }}</span>{% endif %}{% endfor %}
          </span>
        </div>
      {% endif %}

      {% if item.goal %}
        <div class="home__advise-line">
          <span class="home__advise-label">Mission</span>
          <span class="home__advise-body">{{ item.goal }}</span>
        </div>
      {% endif %}

      {% if item.scope %}
        <div class="home__advise-line">
          <span class="home__advise-label">Scope</span>
          <span class="home__advise-body">{{ item.scope }}</span>
        </div>
      {% endif %}

      {% if item.achievement %}
        <div class="home__advise-line">
          <span class="home__advise-label">Since</span>
          <span class="home__advise-body">{{ item.achievement }}</span>
        </div>
      {% endif %}
    </li>
  {% endfor %}
</ul>
