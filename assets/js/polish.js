/* ==========================================================================
   polish.js — small progressive-enhancement script
   --------------------------------------------------------------------------
   - Scroll-triggered reveal for elements marked with `.reveal`
   - Respects `prefers-reduced-motion`
   - No dependencies, ~1KB minified, deferred by the main scripts include.
   ========================================================================== */
(function () {
  'use strict';

  var root = document.documentElement;
  var reduceMotion = root.classList.contains('reduce-motion');

  var targets = document.querySelectorAll('.reveal');
  if (!targets.length) return;

  if (reduceMotion || !('IntersectionObserver' in window)) {
    // Reduced motion / old browser: skip the fade and reveal immediately.
    for (var i = 0; i < targets.length; i++) targets[i].classList.add('is-visible');
    return;
  }

  // Only engage the hidden state once we can guarantee we'll reveal it. This
  // ensures reveal elements are never stuck invisible if this script fails
  // to load for any reason (CSP, offline cache, etc.).
  root.classList.add('polish-ready');

  var observer = new IntersectionObserver(function (entries, obs) {
    for (var i = 0; i < entries.length; i++) {
      var entry = entries[i];
      if (entry.isIntersecting) {
        entry.target.classList.add('is-visible');
        obs.unobserve(entry.target);
      }
    }
  }, {
    threshold: 0.12,
    rootMargin: '0px 0px -40px 0px'
  });

  for (var j = 0; j < targets.length; j++) observer.observe(targets[j]);
})();
