---
layout: archive
title: "Advising &amp; angel investing"
permalink: /advising/
author_profile: false
---

{% include base_path %}

<p class="advise-lede">
  Selected engagements with early-stage founders in drone delivery, autonomous systems, and healthtech,
  plus prior operating experience scaling autonomous logistics. Common threads: building engineering
  teams, navigating regulation and certification, market expansion across EU / US / Asia, and shipping
  first end-to-end pilots into safety-critical environments.
</p>

<h2 class="advise-section-heading">Advising &amp; angel investing</h2>

<ul class="home__advise">
  {% for item in site.data.advising.engagements %}
    {% include advising-card.html item=item %}
  {% endfor %}
</ul>

{% if site.data.advising.operating %}
  <h2 class="advise-section-heading">Operating experience</h2>

  <ul class="home__advise">
    {% for item in site.data.advising.operating %}
      {% include advising-card.html item=item %}
    {% endfor %}
  </ul>
{% endif %}
