---
layout: default
title: "Services"
permalink: /services/
---

<div class="services-page">
  <header class="services-header">
    <div class="services-header-inner">
      <h1>The Work</h1>
      <p class="services-intro">
        Each engagement is finite, structured, and designed to force decisions.
        Nothing is open-ended. Nothing is optimized. Chaos is exposed and removed.
      </p>
    </div>
  </header>

  <section class="services-list">
    <a href="/services/assessment/" class="service-card service-card--primary">
      <div class="service-card-inner">
        <span class="service-card-number">01</span>
        <h2>Chaos Assessment</h2>
        <p class="service-card-question">Where is chaos stealing capacity?</p>
        <p class="service-card-desc">
          A forensic examination of where operational chaos is consuming engineering time,
          creating risk, and degrading trust. Surfaces hidden complexity, heroics, and
          capacity loss that never appears on a roadmap.
        </p>
        <ul class="service-card-outputs">
          <li>Ranked operational failure modes</li>
          <li>Capacity loss analysis</li>
          <li>Executive readout with decisions</li>
        </ul>
        <span class="service-card-duration">2–3 weeks</span>
      </div>
      <span class="service-card-cta">Learn more →</span>
    </a>

    <a href="/services/tolerance/" class="service-card">
      <div class="service-card-inner">
        <span class="service-card-number">02</span>
        <h2>Chaos Tolerance Decision</h2>
        <p class="service-card-question">What chaos will you own?</p>
        <p class="service-card-desc">
          Forces a binding decision on which operational chaos gets fixed and which
          remains. Assigns owners. Undecided items become documented operational debt
          with explicit cost.
        </p>
        <ul class="service-card-outputs">
          <li>Chaos Tolerance Decision document</li>
          <li>Operational Debt Register</li>
          <li>Non-negotiable constraints</li>
        </ul>
        <span class="service-card-duration">2–4 weeks</span>
        <span class="service-card-prereq">Requires Chaos Assessment</span>
      </div>
      <span class="service-card-cta">Learn more →</span>
    </a>

    <a href="/services/executive-audit/" class="service-card">
      <div class="service-card-inner">
        <span class="service-card-number">03</span>
        <h2>Executive Interference Audit</h2>
        <p class="service-card-question">How does leadership slow recovery?</p>
        <p class="service-card-desc">
          Exposes how executive presence during incidents mechanically extends recovery
          time. Produces explicit constraints on how authority is applied during failures.
          Not coaching. Constraint.
        </p>
        <ul class="service-card-outputs">
          <li>Executive Behavior Briefing</li>
          <li>Leadership Do/Don't Constraints</li>
          <li>Control-Plane Separation Model</li>
        </ul>
        <span class="service-card-duration">2–3 weeks</span>
      </div>
      <span class="service-card-cta">Learn more →</span>
    </a>

    <div class="service-card service-card--coming">
      <div class="service-card-inner">
        <span class="service-card-number">04</span>
        <h2>Ongoing Stewardship</h2>
        <p class="service-card-question">How do you keep it boring?</p>
        <p class="service-card-desc">
          Senior oversight to prevent drift and entropy after decisions are made.
          Pressure on system shape and decision quality. No firefighting. No tooling.
          Boredom is maintained.
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
          <span class="path-note">Start here</span>
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
      <p class="path-desc">
        The Executive Interference Audit can be triggered by assessment findings
        or engaged independently when incident recovery patterns indicate
        leadership interference.
      </p>
    </div>
  </section>

  <section class="services-cta">
    <div class="services-cta-inner">
      <p>Every engagement begins with a Chaos Assessment.</p>
      <a href="/contact/">Start a conversation</a>
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
    border-bottom: 1px solid rgba(255, 255, 255, 0.06);
  }

  .services-header-inner {
    max-width: 900px;
    margin: 0 auto;
  }

  .services-header h1 {
    font-size: 2.5rem;
    font-weight: 600;
    color: rgba(232, 230, 227, 0.95);
    margin: 0;
    letter-spacing: -0.02em;
  }

  .services-intro {
    font-size: 1.125rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.6);
    margin: 1.5rem 0 0;
    max-width: 600px;
  }

  /* Service Cards */
  .services-list {
    max-width: 900px;
    margin: 0 auto;
    padding: 3rem 1.5rem;
    display: grid;
    gap: 1.5rem;
  }

  .service-card {
    display: block;
    text-decoration: none;
    padding: 2rem;
    background: #0a0a0a;
    border: 1px solid rgba(255, 255, 255, 0.06);
    border-radius: 6px;
    transition: all 200ms ease;
    position: relative;
  }

  .service-card:hover {
    border-color: rgba(249, 115, 22, 0.3);
    background: #0f0f0f;
  }

  .service-card--primary {
    border-color: rgba(249, 115, 22, 0.2);
    background:
      linear-gradient(135deg, rgba(249, 115, 22, 0.03) 0%, transparent 50%),
      #0a0a0a;
  }

  .service-card--primary:hover {
    border-color: rgba(249, 115, 22, 0.4);
  }

  .service-card--coming {
    opacity: 0.6;
    cursor: default;
  }

  .service-card-inner {
    position: relative;
  }

  .service-card-number {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.7rem;
    color: rgba(249, 115, 22, 0.5);
    display: block;
    margin-bottom: 0.75rem;
  }

  .service-card h2 {
    font-size: 1.25rem;
    font-weight: 600;
    color: rgba(232, 230, 227, 0.9);
    margin: 0 0 0.5rem;
    transition: color 150ms ease;
  }

  .service-card:hover h2 {
    color: rgba(249, 115, 22, 1);
  }

  .service-card--coming h2 {
    color: rgba(232, 230, 227, 0.6);
  }

  .service-card-question {
    font-size: 0.9375rem;
    font-style: italic;
    color: rgba(249, 115, 22, 0.7);
    margin: 0 0 1rem;
  }

  .service-card-desc {
    font-size: 0.9375rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.6);
    margin: 0 0 1.25rem;
  }

  .service-card-outputs {
    list-style: none;
    padding: 0;
    margin: 0 0 1rem;
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
  }

  .service-card-outputs li {
    font-size: 0.75rem;
    color: rgba(232, 230, 227, 0.5);
    padding: 0.25rem 0.625rem;
    background: rgba(255, 255, 255, 0.04);
    border-radius: 3px;
  }

  .service-card-duration {
    font-size: 0.75rem;
    color: rgba(232, 230, 227, 0.4);
    display: block;
  }

  .service-card-prereq {
    font-size: 0.75rem;
    color: rgba(249, 115, 22, 0.6);
    display: block;
    margin-top: 0.5rem;
  }

  .service-card-badge {
    display: inline-block;
    font-size: 0.6875rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    color: rgba(232, 230, 227, 0.4);
    padding: 0.375rem 0.75rem;
    background: rgba(255, 255, 255, 0.05);
    border-radius: 3px;
    margin-top: 1rem;
  }

  .service-card-cta {
    position: absolute;
    bottom: 2rem;
    right: 2rem;
    font-size: 0.8125rem;
    font-weight: 500;
    color: rgba(249, 115, 22, 0.7);
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
    padding: 4rem 1.5rem;
    background: #111;
    border-top: 1px solid rgba(255, 255, 255, 0.06);
  }

  .services-path-inner {
    max-width: 800px;
    margin: 0 auto;
    text-align: center;
  }

  .services-path h2 {
    font-size: 0.7rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.2em;
    color: rgba(249, 115, 22, 0.8);
    margin: 0 0 2.5rem;
  }

  .path-visual {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 1.5rem;
    margin-bottom: 2rem;
  }

  .path-step {
    text-align: center;
  }

  .path-num {
    display: block;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.75rem;
    color: rgba(249, 115, 22, 0.6);
    margin-bottom: 0.5rem;
  }

  .path-label {
    display: block;
    font-size: 0.875rem;
    font-weight: 500;
    color: rgba(232, 230, 227, 0.8);
    margin-bottom: 0.25rem;
  }

  .path-note {
    display: block;
    font-size: 0.6875rem;
    color: rgba(232, 230, 227, 0.4);
    text-transform: uppercase;
    letter-spacing: 0.05em;
  }

  .path-arrow {
    color: rgba(255, 255, 255, 0.2);
    font-size: 1.25rem;
  }

  .path-desc {
    font-size: 0.875rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.5);
    max-width: 500px;
    margin: 0 auto;
  }

  /* CTA */
  .services-cta {
    padding: 5rem 1.5rem;
    text-align: center;
    background:
      radial-gradient(ellipse 60% 50% at 50% 100%, rgba(249, 115, 22, 0.06) 0%, transparent 60%),
      #000;
  }

  .services-cta-inner p {
    font-size: 1.125rem;
    color: rgba(232, 230, 227, 0.7);
    margin: 0 0 2rem;
  }

  .services-cta-inner a {
    display: inline-block;
    font-size: 0.9375rem;
    font-weight: 600;
    color: #000;
    text-decoration: none;
    padding: 1rem 3rem;
    background: rgba(249, 115, 22, 1);
    border-radius: 3px;
    box-shadow: 0 0 30px rgba(249, 115, 22, 0.25);
    transition: all 150ms ease;
  }

  .services-cta-inner a:hover {
    background: rgba(249, 115, 22, 0.9);
    box-shadow: 0 0 50px rgba(249, 115, 22, 0.35);
    transform: translateY(-1px);
  }

  /* Responsive */
  @media (max-width: 700px) {
    .services-header {
      padding: 3.5rem 1.25rem 3rem;
    }

    .services-header h1 {
      font-size: 1.75rem;
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

    .path-visual {
      flex-direction: column;
      gap: 1rem;
    }

    .path-arrow {
      transform: rotate(90deg);
    }
  }
</style>
