---
layout: default
title: "Proof"
permalink: /proof/
---

<div class="proof-page">
  <header class="proof-header">
    <div class="proof-header-inner">
      <div class="terminal-prompt">
        <span class="prompt-symbol">$</span>
        <span class="prompt-text">cat results.log</span>
        <span class="cursor"></span>
      </div>
      <h1>This actually happened.</h1>
      <p class="proof-intro">
        Not theory. Not projections. Real engagements with structural outcomes.
      </p>
    </div>
  </header>

  {% assign case_studies = site.proof %}

  {% if case_studies.size > 0 %}
  <section class="proof-list">
    {% for study in case_studies %}
    <a href="{{ study.url }}" class="proof-card">
      <span class="proof-card-label">Case Study</span>
      <h2>{{ study.title }}</h2>
      {% if study.excerpt %}
      <p class="proof-card-excerpt">{{ study.excerpt }}</p>
      {% endif %}
      {% if study.tags %}
      <div class="proof-card-tags">
        {% for tag in study.tags %}
        <span>{{ tag }}</span>
        {% endfor %}
      </div>
      {% endif %}
      <span class="proof-card-arrow">Review outcome &rarr;</span>
    </a>
    {% endfor %}
  </section>
  {% else %}
  <section class="proof-empty">
    <p>Case studies coming soon.</p>
  </section>
  {% endif %}
</div>

<style>
  .proof-page {
    background: #000;
    min-height: calc(100vh - 44px);
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

  /* Header */
  .proof-header {
    padding: 5rem 1.5rem 4rem;
    background: linear-gradient(180deg, rgba(249, 115, 22, 0.03) 0%, transparent 100%);
    border-bottom: 1px solid rgba(255, 255, 255, 0.06);
  }

  .proof-header-inner {
    max-width: 800px;
    margin: 0 auto;
    opacity: 0;
    transform: translateY(15px);
    animation: proof-fade-in 0.6s ease-out 0.1s forwards;
  }

  @keyframes proof-fade-in {
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  .proof-header h1 {
    font-size: 2rem;
    font-weight: 600;
    color: rgba(232, 230, 227, 0.95);
    margin: 0;
  }

  .proof-intro {
    font-size: 1.125rem;
    color: rgba(232, 230, 227, 0.6);
    margin: 1rem 0 0;
  }

  /* List */
  .proof-list {
    padding: 3rem 1.5rem 4rem;
    max-width: 800px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
  }

  .proof-card {
    display: block;
    padding: 2rem 2.5rem;
    background: linear-gradient(135deg, rgba(249, 115, 22, 0.04) 0%, transparent 100%);
    border: 1px solid rgba(249, 115, 22, 0.1);
    border-radius: 8px;
    text-decoration: none;
    transition: all 250ms ease;
  }

  .proof-card:hover {
    background: linear-gradient(135deg, rgba(249, 115, 22, 0.08) 0%, transparent 100%);
    border-color: rgba(249, 115, 22, 0.25);
    transform: translateY(-2px);
  }

  .proof-card-label {
    font-size: 0.6875rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.15em;
    color: rgba(249, 115, 22, 0.8);
    display: block;
    margin-bottom: 1rem;
  }

  .proof-card h2 {
    font-size: 1.5rem;
    font-weight: 600;
    color: rgba(232, 230, 227, 0.95);
    margin: 0 0 0.75rem;
    transition: color 200ms ease;
  }

  .proof-card:hover h2 {
    color: rgb(251, 146, 60);
  }

  .proof-card-excerpt {
    font-size: 1rem;
    line-height: 1.6;
    color: rgba(232, 230, 227, 0.55);
    margin: 0 0 1.25rem;
  }

  .proof-card-tags {
    display: flex;
    gap: 0.75rem;
    flex-wrap: wrap;
    margin-bottom: 1.5rem;
  }

  .proof-card-tags span {
    font-size: 0.6875rem;
    color: rgba(232, 230, 227, 0.4);
    padding: 0.25rem 0.75rem;
    background: rgba(255, 255, 255, 0.04);
    border-radius: 3px;
  }

  .proof-card-arrow {
    font-size: 0.8125rem;
    font-weight: 500;
    color: rgba(249, 115, 22, 0.7);
    transition: color 200ms ease;
  }

  .proof-card:hover .proof-card-arrow {
    color: rgba(249, 115, 22, 1);
  }

  /* Empty state */
  .proof-empty {
    padding: 6rem 1.5rem;
    text-align: center;
  }

  .proof-empty p {
    font-size: 1rem;
    color: rgba(232, 230, 227, 0.4);
  }

  /* Responsive */
  @media (max-width: 600px) {
    .proof-header {
      padding: 3.5rem 1.25rem 3rem;
    }

    .proof-header h1 {
      font-size: 1.5rem;
    }

    .proof-list {
      padding: 2rem 1.25rem 3rem;
    }

    .proof-card {
      padding: 1.5rem;
    }

    .proof-card h2 {
      font-size: 1.25rem;
    }
  }
</style>
