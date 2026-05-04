---
layout: archive
title: "Startups"
permalink: /advising/
author_profile: false
---

{% include base_path %}

<div class="advise-lede">
  <p>
    My goal is to help exceptional founders build generational companies in autonomous systems, drone delivery, and healthtech. These are some of the hardest
    markets to build in: margins are thin, R&amp;D cycles are long, the path from build to production
    nonlinear — often requiring a rebuild from scratch — and regulation is unforgiving. Standing
    up vertically integrated companies operating in the physical world, demands deep
    conviction and strong belief in people and technology.
  </p>
  <p>
    I work alongside founders from the earliest stages, drawing on the experience I gained
    in scaling autonomous logistics at Zipline — helping them turn ideas into companies, build engineering
    teams that scale, navigate regulation and certification, and ship pilots and EV pilots into
    safety-critical environments.
  </p>
  <p>
    I'm most drawn to entrepreneurs who can articulate not just what they're building but why the world
    needs it, and who pair that vision with the resilience to keep going when the work is still quiet
    and the path is still long.
  </p>
</div>

<h2 class="advise-section-heading">Advising</h2>

<ul class="home__advise">
  {% for item in site.data.advising.engagements %}
    {% include advising-card.html item=item %}
  {% endfor %}
</ul>

{% if site.data.advising.operating %}
  <h2 class="advise-section-heading">Building</h2>

  <ul class="home__advise">
    {% for item in site.data.advising.operating %}
      {% include advising-card.html item=item %}
    {% endfor %}
  </ul>
{% endif %}
