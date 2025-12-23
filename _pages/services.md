---
layout: default
title: "Services"
permalink: /services/
---

<div class="services-page">
  <header class="services-header">
    <div class="services-header-inner">
      <div class="terminal-prompt">
        <span class="prompt-symbol">$</span>
        <span class="prompt-text">./diagnose --verbose</span>
        <span class="cursor"></span>
      </div>
      <h1>Finite engagements.<br>Forced decisions.</h1>
      <p class="services-intro">
        This is not advisory work.<br>
        Chaos is exposed, decisions are forced, and capacity is returned.
      </p>
    </div>
  </header>

  <section class="services-anti">
    <div class="services-anti-inner">
      <span class="anti-label">What you will not get</span>
      <div class="anti-items">
        <span>Roadmaps</span>
        <span>Options without owners</span>
        <span>Framework theater</span>
        <span>Gentle suggestions</span>
        <span>Endless optimization</span>
      </div>
    </div>
  </section>

  <section class="services-list">
    <a href="/services/chaos_assessment/" class="service-card service-card--primary" data-num="01">
      <div class="service-card-inner">
        <span class="service-card-number">01</span>
        <h2>Chaos Assessment</h2>
        <p class="service-card-question">Where is chaos stealing capacity?</p>
        <p class="service-card-desc">
          A forensic examination of how operational chaos consumes engineering time,
          creates risk, and erodes trust. This work surfaces hidden complexity,
          compensating behaviors, and capacity loss that never appears on a roadmap.
        </p>
        <ul class="service-card-outputs">
          <li>Ranked failure modes</li>
          <li>Capacity loss attribution</li>
          <li>Executive readout grounded in evidence</li>
        </ul>
        <span class="service-card-duration">2–3 weeks</span>
      </div>
      <span class="service-card-cta">Learn more →</span>
    </a>

    <a href="/services/tolerance/" class="service-card" data-num="02">
      <div class="service-card-inner">
        <span class="service-card-number">02</span>
        <h2>Chaos Tolerance Decision</h2>
        <p class="service-card-question">What chaos will you continue to own?</p>
        <p class="service-card-desc">
          Converts acknowledgment into a binding decision. The organization explicitly
          decides what chaos will be eliminated, what will remain, and who owns the cost.
          Anything undecided is recorded as intentional operational debt.
        </p>
        <ul class="service-card-outputs">
          <li>Chaos Tolerance Decision document</li>
          <li>Operational debt register</li>
          <li>Non-negotiable constraints</li>
        </ul>
        <span class="service-card-duration">2–4 weeks</span>
        <span class="service-card-prereq">Requires Chaos Assessment</span>
      </div>
      <span class="service-card-cta">Learn more →</span>
    </a>

    <!-- <a href="/services/executive-audit/" class="service-card">
      <div class="service-card-inner">
        <span class="service-card-number">03</span>
        <h2>Executive Interference Audit</h2>
        <p class="service-card-question">How does leadership extend incidents?</p>
        <p class="service-card-desc">
          Identifies how executive presence, escalation patterns, and authority misuse
          mechanically slow recovery. Produces explicit constraints on leadership behavior
          during incidents. This is not coaching. It is control-plane separation.
        </p>
        <ul class="service-card-outputs">
          <li>Executive behavior briefing</li>
          <li>Leadership do / don’t constraints</li>
          <li>Incident authority model</li>
        </ul>
        <span class="service-card-duration">2–3 weeks</span>
      </div>
      <span class="service-card-cta">Learn more →</span>
    </a> -->

    <div class="service-card service-card--coming" data-num="03">
      <div class="service-card-inner">
        <span class="service-card-number">03</span>
        <h2>Ongoing Stewardship</h2>
        <p class="service-card-question">How do you prevent drift?</p>
        <p class="service-card-desc">
          Senior oversight after decisions are made. Continuous pressure on system shape,
          decision quality, and entropy control. No firefighting. No tooling. Boredom is
          actively maintained.
        </p>
        <span class="service-card-badge">Coming Soon</span>
      </div>
    </div>
  </section>

  <section class="services-path">
    <div class="services-path-inner">
      <h2>The Path</h2>
      <div class="path-visual">
        <div class="path-step">
          <span class="path-num">1</span>
          <span class="path-label">Chaos Assessment</span>
          <span class="path-note">Required</span>
        </div>
        <div class="path-arrow">→</div>
        <div class="path-step">
          <span class="path-num">2</span>
          <span class="path-label">Tolerance Decision</span>
          <span class="path-note">Optional</span>
        </div>
        <div class="path-arrow">→</div>
        <div class="path-step">
          <span class="path-num">3</span>
          <span class="path-label">Stewardship</span>
          <span class="path-note">Ongoing</span>
        </div>
      </div>
    </div>
  </section>

</div>


<style>
  .services-page {
    background: #000;
    min-height: calc(100vh - 44px);
  }

  /* Header */
  .services-header {
    padding: 5rem 1.5rem 4rem;
    background: linear-gradient(180deg, rgba(249, 115, 22, 0.02) 0%, transparent 100%);
  }

  .services-header-inner {
    max-width: 900px;
    margin: 0 auto;
    opacity: 0;
    transform: translateY(15px);
    animation: services-fade-in 0.6s ease-out 0.1s forwards;
  }

  @keyframes services-fade-in {
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  /* Terminal prompt */
  .terminal-prompt {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.8125rem;
    color: rgba(249, 115, 22, 0.7);
    margin-bottom: 1.5rem;
    padding: 0.625rem 1rem;
    background: rgba(249, 115, 22, 0.05);
    border: 1px solid rgba(249, 115, 22, 0.15);
    border-radius: 4px;
  }

  .prompt-symbol {
    color: rgba(249, 115, 22, 0.9);
    font-weight: 600;
  }

  .cursor {
    width: 8px;
    height: 14px;
    background: rgba(249, 115, 22, 0.7);
    animation: blink 1s step-end infinite;
  }

  @keyframes blink {
    50% { opacity: 0; }
  }

  .services-header h1 {
    font-size: 2.75rem;
    font-weight: 700;
    color: rgba(232, 230, 227, 0.95);
    margin: 0;
    letter-spacing: -0.03em;
    line-height: 1.15;
  }

  .services-intro {
    font-size: 1.0625rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.55);
    margin: 1.75rem 0 0;
    max-width: 500px;
  }

  /* Anti section */
  .services-anti {
    padding: 2.5rem 1.5rem;
    background: #050505;
    border-top: 1px solid rgba(239, 68, 68, 0.15);
    border-bottom: 1px solid rgba(255, 255, 255, 0.04);
  }

  .services-anti-inner {
    max-width: 900px;
    margin: 0 auto;
    display: flex;
    align-items: center;
    gap: 2rem;
    flex-wrap: wrap;
  }

  .anti-label {
    font-size: 0.6875rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.15em;
    color: rgba(239, 68, 68, 0.7);
    white-space: nowrap;
  }

  .anti-items {
    display: flex;
    flex-wrap: nowrap;
    gap: 0.5rem;
  }

  .anti-items span {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.6875rem;
    color: rgba(232, 230, 227, 0.4);
    padding: 0.3rem 0.625rem;
    background: rgba(239, 68, 68, 0.06);
    border: 1px solid rgba(239, 68, 68, 0.12);
    border-radius: 2px;
    text-decoration: line-through;
    text-decoration-color: rgba(239, 68, 68, 0.5);
    white-space: nowrap;
    opacity: 0;
    transform: translateY(-10px);
    transition: opacity 0.3s ease, transform 0.3s ease;
  }

  .anti-items span.visible {
    opacity: 1;
    transform: translateY(0);
  }

  /* Service Cards */
  .services-list {
    max-width: 900px;
    margin: 0 auto;
    padding: 3.5rem 1.5rem;
    display: grid;
    gap: 1.25rem;
  }

  .service-card {
    display: block;
    text-decoration: none;
    padding: 2rem 2.25rem;
    background: #080808;
    border: 1px solid rgba(255, 255, 255, 0.05);
    border-left: 3px solid rgba(249, 115, 22, 0.3);
    border-radius: 0 4px 4px 0;
    transition: all 200ms ease;
    position: relative;
    opacity: 0;
    transform: translateX(-20px);
  }

  .service-card.visible {
    opacity: 1;
    transform: translateX(0);
  }

  .service-card:hover {
    border-left-color: rgba(249, 115, 22, 0.8);
    background: #0c0c0c;
    transform: translateX(4px);
  }

  .service-card.visible:hover {
    transform: translateX(4px);
  }

  .service-card--primary {
    border-left-color: rgba(249, 115, 22, 0.6);
    background:
      linear-gradient(90deg, rgba(249, 115, 22, 0.03) 0%, transparent 40%),
      #080808;
  }

  .service-card--primary:hover {
    border-left-color: rgba(249, 115, 22, 1);
  }

  .service-card--coming {
    opacity: 0;
    cursor: default;
    border-left-color: rgba(255, 255, 255, 0.1);
  }

  .service-card--coming.visible {
    opacity: 0.5;
  }

  .service-card--coming:hover {
    transform: none;
    background: #080808;
    border-left-color: rgba(255, 255, 255, 0.1);
  }

  .service-card-inner {
    position: relative;
  }

  /* Big background number */
  .service-card::after {
    content: attr(data-num);
    position: absolute;
    top: -10px;
    right: 1rem;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 8rem;
    font-weight: 800;
    color: rgba(249, 115, 22, 0.03);
    line-height: 1;
    pointer-events: none;
    transition: all 300ms ease;
  }

  .service-card:hover::after {
    color: rgba(249, 115, 22, 0.06);
    transform: scale(1.05);
  }

  .service-card--coming::after {
    color: rgba(255, 255, 255, 0.02);
  }

  .service-card-number {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.625rem;
    font-weight: 600;
    color: #000;
    background: rgba(249, 115, 22, 0.7);
    display: inline-block;
    padding: 0.2rem 0.5rem;
    border-radius: 2px;
    margin-bottom: 1rem;
    position: relative;
    z-index: 1;
  }

  .service-card h2 {
    font-size: 1.375rem;
    font-weight: 600;
    color: rgba(232, 230, 227, 0.95);
    margin: 0 0 0.5rem;
    letter-spacing: -0.01em;
    transition: color 150ms ease;
  }

  .service-card:hover h2 {
    color: rgba(249, 115, 22, 1);
  }

  .service-card--coming h2 {
    color: rgba(232, 230, 227, 0.5);
  }

  .service-card-question {
    font-size: 1rem;
    font-style: italic;
    color: rgba(249, 115, 22, 0.8);
    margin: 0 0 1.25rem;
  }

  .service-card-desc {
    font-size: 0.9375rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.55);
    margin: 0 0 1.5rem;
    max-width: 600px;
  }

  .service-card-outputs {
    list-style: none;
    padding: 0;
    margin: 0 0 1.25rem;
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
  }

  .service-card-outputs li {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.6875rem;
    color: rgba(232, 230, 227, 0.6);
    padding: 0.375rem 0.75rem;
    background: rgba(249, 115, 22, 0.06);
    border: 1px solid rgba(249, 115, 22, 0.15);
    border-radius: 2px;
    transition: all 200ms ease;
  }

  .service-card:hover .service-card-outputs li {
    background: rgba(249, 115, 22, 0.1);
    border-color: rgba(249, 115, 22, 0.25);
    color: rgba(232, 230, 227, 0.8);
  }

  .service-card-duration {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.6875rem;
    color: rgba(232, 230, 227, 0.35);
    display: inline-block;
    padding: 0.25rem 0.5rem;
    background: rgba(255, 255, 255, 0.03);
    border-radius: 2px;
  }

  .service-card-prereq {
    font-size: 0.6875rem;
    color: rgba(249, 115, 22, 0.6);
    display: inline-block;
    margin-left: 0.75rem;
    padding-left: 0.75rem;
    border-left: 1px solid rgba(255, 255, 255, 0.1);
  }

  .service-card-badge {
    display: inline-block;
    font-size: 0.625rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    color: rgba(232, 230, 227, 0.35);
    padding: 0.375rem 0.75rem;
    background: rgba(255, 255, 255, 0.03);
    border: 1px solid rgba(255, 255, 255, 0.08);
    border-radius: 2px;
    margin-top: 1rem;
  }

  .service-card-cta {
    position: absolute;
    bottom: 2rem;
    right: 2.25rem;
    font-size: 0.8125rem;
    font-weight: 500;
    color: rgba(249, 115, 22, 0.8);
    opacity: 0;
    transform: translateX(-8px);
    transition: all 150ms ease;
  }

  .service-card:hover .service-card-cta {
    opacity: 1;
    transform: translateX(0);
  }

  /* Path Section */
  .services-path {
    padding: 4.5rem 1.5rem;
    background:
      linear-gradient(180deg, #0a0a0a 0%, #111 50%, #0a0a0a 100%);
    border-top: 1px solid rgba(249, 115, 22, 0.1);
  }

  .services-path-inner {
    max-width: 800px;
    margin: 0 auto;
    text-align: center;
  }

  .services-path h2 {
    font-size: 0.6875rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.25em;
    color: rgba(249, 115, 22, 0.6);
    margin: 0 0 3rem;
  }

  .path-visual {
    display: flex;
    align-items: stretch;
    justify-content: center;
    gap: 0;
    margin-bottom: 2.5rem;
  }

  .path-step {
    text-align: center;
    padding: 1.5rem 2rem;
    background: rgba(255, 255, 255, 0.02);
    border: 1px solid rgba(255, 255, 255, 0.05);
    position: relative;
    opacity: 0;
    transform: translateY(10px);
    transition: opacity 0.4s ease, transform 0.4s ease, border-color 0.2s ease, background 0.2s ease;
  }

  .path-step.visible {
    opacity: 1;
    transform: translateY(0);
  }

  .path-step:first-child {
    border-radius: 4px 0 0 4px;
    border-left-width: 2px;
    border-left-color: rgba(249, 115, 22, 0.4);
  }

  .path-step:last-child {
    border-radius: 0 4px 4px 0;
  }

  .path-step:hover {
    background: rgba(249, 115, 22, 0.03);
    border-color: rgba(249, 115, 22, 0.2);
  }

  .path-num {
    display: block;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.625rem;
    font-weight: 600;
    color: #000;
    background: rgba(249, 115, 22, 0.6);
    width: 1.5rem;
    height: 1.5rem;
    line-height: 1.5rem;
    border-radius: 50%;
    margin: 0 auto 0.75rem;
    transition: all 250ms ease;
  }

  .path-step:hover .path-num {
    background: rgba(249, 115, 22, 0.9);
    box-shadow: 0 0 20px rgba(249, 115, 22, 0.5);
    transform: scale(1.15);
  }

  .path-label {
    display: block;
    font-size: 0.875rem;
    font-weight: 500;
    color: rgba(232, 230, 227, 0.85);
    margin-bottom: 0.375rem;
    white-space: nowrap;
  }

  .path-note {
    display: block;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.625rem;
    color: rgba(232, 230, 227, 0.35);
    text-transform: uppercase;
    letter-spacing: 0.05em;
  }

  .path-step:first-child .path-note {
    color: rgba(249, 115, 22, 0.6);
  }

  .path-step:first-child .path-num {
    animation: pulse-glow 3s ease-in-out infinite;
  }

  @keyframes pulse-glow {
    0%, 100% { box-shadow: 0 0 0 rgba(249, 115, 22, 0); }
    50% { box-shadow: 0 0 15px rgba(249, 115, 22, 0.4); }
  }

  .path-arrow {
    color: rgba(249, 115, 22, 0.3);
    font-size: 1rem;
    display: flex;
    align-items: center;
    padding: 0 0.25rem;
    opacity: 0;
    transition: opacity 0.3s ease;
  }

  .path-arrow.visible {
    opacity: 1;
  }

  .path-desc {
    font-size: 0.8125rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.45);
    max-width: 480px;
    margin: 0 auto;
    padding-top: 1.5rem;
    border-top: 1px solid rgba(255, 255, 255, 0.05);
  }

  /* CTA */
  .services-cta {
    position: relative;
    padding: 6rem 1.5rem;
    text-align: center;
    background:
      radial-gradient(ellipse 60% 40% at 50% 80%, rgba(249, 115, 22, 0.06) 0%, transparent 70%),
      #000;
    overflow: hidden;
  }

  .cta-noise {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.875rem;
    line-height: 2;
    color: rgba(255, 255, 255, 0.12);
    padding: 1.5rem;
    user-select: none;
    pointer-events: none;
    word-break: break-word;
    overflow: hidden;
    animation: cta-noise-pulse 4s ease-in-out infinite;
  }

  @keyframes cta-noise-pulse {
    0%, 100% { opacity: 0.4; }
    50% { opacity: 1; }
  }

  .services-cta-inner {
    position: relative;
    z-index: 1;
  }

  .services-cta-inner p {
    font-size: 1.125rem;
    color: rgba(232, 230, 227, 0.8);
    margin: 0 0 2rem;
  }

  .services-cta-inner a {
    display: inline-block;
    font-size: 0.9375rem;
    font-weight: 600;
    color: #000;
    text-decoration: none;
    padding: 1rem 3rem;
    border: none;
    border-radius: 3px;
    background: rgba(249, 115, 22, 1);
    box-shadow: 0 0 30px rgba(249, 115, 22, 0.25);
    transition: all 150ms ease;
    animation: cta-glow-pulse 3s ease-in-out infinite;
  }

  @keyframes cta-glow-pulse {
    0%, 100% { box-shadow: 0 0 30px rgba(249, 115, 22, 0.25); }
    50% { box-shadow: 0 0 50px rgba(249, 115, 22, 0.45), 0 0 80px rgba(249, 115, 22, 0.2); }
  }

  .services-cta-inner a:hover {
    background: rgba(249, 115, 22, 0.9);
    box-shadow: 0 0 60px rgba(249, 115, 22, 0.5);
    transform: translateY(-1px);
    animation: none;
  }

  /* Responsive */
  @media (max-width: 700px) {
    .services-header {
      padding: 3.5rem 1.25rem 3rem;
    }

    .services-header h1 {
      font-size: 1.75rem;
    }

    .services-anti-inner {
      flex-direction: column;
      align-items: flex-start;
      gap: 1rem;
    }

    .anti-items {
      flex-wrap: wrap;
    }

    .services-list {
      padding: 2rem 1.25rem;
    }

    .service-card {
      padding: 1.5rem;
    }

    .service-card-cta {
      position: static;
      display: block;
      margin-top: 1rem;
      opacity: 1;
      transform: none;
    }

    .service-card-prereq {
      display: block;
      margin: 0.5rem 0 0;
      padding: 0;
      border: none;
    }

    .path-visual {
      flex-direction: column;
      gap: 0;
    }

    .path-step {
      border-radius: 0;
      padding: 1.25rem 1.5rem;
    }

    .path-step:first-child {
      border-radius: 4px 4px 0 0;
      border-left-width: 1px;
      border-top-width: 2px;
      border-top-color: rgba(249, 115, 22, 0.4);
    }

    .path-step:last-child {
      border-radius: 0 0 4px 4px;
    }

    .path-arrow {
      transform: rotate(90deg);
      padding: 0.25rem 0;
      justify-content: center;
    }
  }

  @media (max-width: 480px) {
    .services-header h1 {
      font-size: 1.5rem;
    }

    .anti-items span {
      font-size: 0.6875rem;
    }
  }
</style>

<script>
(function() {
  'use strict';

  function init() {
    // Anti items stagger
    var antiItems = document.querySelectorAll('.anti-items span');
    if (antiItems.length) {
      var antiObserver = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
          if (entry.isIntersecting) {
            antiItems.forEach(function(item, idx) {
              setTimeout(function() {
                item.classList.add('visible');
              }, idx * 80);
            });
            antiObserver.disconnect();
          }
        });
      }, { threshold: 0.5 });
      antiObserver.observe(document.querySelector('.services-anti'));
    }

    // Service cards stagger
    var cards = document.querySelectorAll('.service-card');
    if (cards.length) {
      var cardObserver = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
          if (entry.isIntersecting) {
            var idx = Array.from(cards).indexOf(entry.target);
            setTimeout(function() {
              entry.target.classList.add('visible');
            }, idx * 120);
            cardObserver.unobserve(entry.target);
          }
        });
      }, { threshold: 0.15, rootMargin: '0px 0px -5% 0px' });
      cards.forEach(function(card) {
        cardObserver.observe(card);
      });
    }

    // Path steps stagger
    var pathSteps = document.querySelectorAll('.path-step');
    var pathArrows = document.querySelectorAll('.path-arrow');
    if (pathSteps.length) {
      var pathObserver = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
          if (entry.isIntersecting) {
            pathSteps.forEach(function(step, idx) {
              setTimeout(function() {
                step.classList.add('visible');
                if (pathArrows[idx]) {
                  setTimeout(function() {
                    pathArrows[idx].classList.add('visible');
                  }, 100);
                }
              }, idx * 150);
            });
            pathObserver.disconnect();
          }
        });
      }, { threshold: 0.3 });
      pathObserver.observe(document.querySelector('.services-path'));
    }
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
</script>
