---
layout: default
title: "Assessment"
permalink: /contact/
---

<div class="contact-page">
  <header class="contact-header">
    <div class="contact-header-inner">
      <div class="terminal-prompt">
        <span class="prompt-symbol">$</span>
        <span class="prompt-text">ssh chaos@yourcompany</span>
        <span class="cursor"></span>
      </div>
      <h1>Let's see what's actually broken.</h1>
      <p class="contact-intro">
        This is not a sales call. It determines whether a Chaos Assessment makes sense.
      </p>
    </div>
  </header>

  <section class="contact-main">
    <div class="contact-main-inner">

      <div class="contact-cta">
        <div class="email-block">
          <span class="email-label">Reach out directly</span>
          <a href="mailto:hello@boringops.run" class="email-link">
            <span class="email-text">hello@boringops.run</span>
            <span class="email-arrow">&rarr;</span>
          </a>
        </div>

        <div class="context-hint">
          <p>Include context:</p>
          <ul>
            <li>What's not working</li>
            <li>Where time or trust is being lost</li>
            <li>Your role and company</li>
          </ul>
        </div>
      </div>

      <div class="contact-info">
        <div class="info-card">
          <h3>What Happens Next</h3>
          <ol class="next-steps">
            <li>Email reviewed</li>
            <li>Response within two business days</li>
            <li>If aligned: short assessment call</li>
            <li>If not: no follow-up</li>
          </ol>
        </div>

        <div class="info-card info-card--warning">
          <h3>Before You Reach Out</h3>
          <p>
            This work is not advisory, implementation, or reassurance.
            If you are looking for tools, validation, or vendor comparison,
            this is not a fit.
          </p>
          <p>
            If you are prepared to surface real constraints and make binding
            decisions about operational chaos, proceed.
          </p>
        </div>
      </div>

    </div>
  </section>
</div>

<style>
  .contact-page {
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
  .contact-header {
    padding: 5rem 1.5rem 4rem;
    background: linear-gradient(180deg, rgba(249, 115, 22, 0.03) 0%, transparent 100%);
    border-bottom: 1px solid rgba(255, 255, 255, 0.06);
  }

  .contact-header-inner {
    max-width: 800px;
    margin: 0 auto;
    opacity: 0;
    transform: translateY(15px);
    animation: fade-in 0.6s ease-out 0.1s forwards;
  }

  @keyframes fade-in {
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  .contact-header h1 {
    font-size: 2rem;
    font-weight: 600;
    color: rgba(232, 230, 227, 0.95);
    margin: 0;
  }

  .contact-intro {
    font-size: 1.0625rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.6);
    margin: 1rem 0 0;
    max-width: 500px;
  }

  /* Main */
  .contact-main {
    padding: 4rem 1.5rem 6rem;
  }

  .contact-main-inner {
    max-width: 900px;
    margin: 0 auto;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 3rem;
  }

  /* Email CTA */
  .contact-cta {
    opacity: 0;
    animation: fade-in 0.5s ease-out 0.2s forwards;
  }

  .email-block {
    background: linear-gradient(135deg, rgba(249, 115, 22, 0.08) 0%, rgba(249, 115, 22, 0.02) 100%);
    border: 1px solid rgba(249, 115, 22, 0.2);
    border-radius: 8px;
    padding: 2.5rem;
    text-align: center;
    transition: all 300ms ease;
  }

  .email-block:hover {
    border-color: rgba(249, 115, 22, 0.4);
    box-shadow: 0 0 60px rgba(249, 115, 22, 0.15);
  }

  .email-label {
    display: block;
    font-size: 0.75rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.15em;
    color: rgba(249, 115, 22, 0.7);
    margin-bottom: 1.25rem;
  }

  .email-link {
    display: inline-flex;
    align-items: center;
    gap: 0.75rem;
    text-decoration: none;
    transition: all 200ms ease;
  }

  .email-text {
    font-size: 1.5rem;
    font-weight: 600;
    color: rgba(232, 230, 227, 0.95);
    transition: all 200ms ease;
  }

  .email-arrow {
    font-size: 1.25rem;
    color: rgba(249, 115, 22, 0.7);
    transform: translateX(0);
    transition: all 200ms ease;
  }

  .email-link:hover .email-text {
    color: rgba(249, 115, 22, 1);
    text-shadow: 0 0 30px rgba(249, 115, 22, 0.5);
  }

  .email-link:hover .email-arrow {
    color: rgba(249, 115, 22, 1);
    transform: translateX(6px);
  }

  .context-hint {
    margin-top: 2rem;
    padding: 1.5rem;
    background: rgba(255, 255, 255, 0.02);
    border: 1px solid rgba(255, 255, 255, 0.05);
    border-radius: 6px;
  }

  .context-hint p {
    font-size: 0.8125rem;
    font-weight: 500;
    color: rgba(232, 230, 227, 0.5);
    margin: 0 0 0.75rem;
  }

  .context-hint ul {
    list-style: none;
    padding: 0;
    margin: 0;
  }

  .context-hint li {
    font-size: 0.875rem;
    color: rgba(232, 230, 227, 0.7);
    padding-left: 1.25rem;
    margin-bottom: 0.5rem;
    position: relative;
  }

  .context-hint li::before {
    content: '—';
    position: absolute;
    left: 0;
    color: rgba(249, 115, 22, 0.5);
  }

  .context-hint li:last-child {
    margin-bottom: 0;
  }

  /* Info cards */
  .contact-info {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
    opacity: 0;
    animation: fade-in 0.5s ease-out 0.35s forwards;
  }

  .info-card {
    padding: 1.75rem;
    background: rgba(255, 255, 255, 0.01);
    border: 1px solid rgba(255, 255, 255, 0.04);
    border-radius: 8px;
    transition: all 250ms ease;
  }

  .info-card:hover {
    background: rgba(255, 255, 255, 0.02);
    border-color: rgba(249, 115, 22, 0.1);
  }

  .info-card h3 {
    font-size: 0.75rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.15em;
    color: rgba(249, 115, 22, 0.8);
    margin: 0 0 1.25rem;
  }

  .info-card p {
    font-size: 0.875rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.55);
    margin: 0 0 0.75rem;
  }

  .info-card p:last-child {
    margin-bottom: 0;
  }

  .info-card--warning {
    background: rgba(249, 115, 22, 0.03);
    border-color: rgba(249, 115, 22, 0.1);
  }

  /* Next steps */
  .next-steps {
    list-style: none;
    padding: 0;
    margin: 0;
    counter-reset: steps;
    position: relative;
  }

  .next-steps::before {
    content: '';
    position: absolute;
    left: 0.5625rem;
    top: 1.5rem;
    bottom: 0.75rem;
    width: 1px;
    background: linear-gradient(180deg, rgba(249, 115, 22, 0.3) 0%, rgba(249, 115, 22, 0.05) 100%);
    z-index: 0;
  }

  .next-steps li {
    font-size: 0.875rem;
    line-height: 1.6;
    color: rgba(232, 230, 227, 0.6);
    padding-left: 2.25rem;
    margin-bottom: 1rem;
    position: relative;
    counter-increment: steps;
    transition: all 200ms ease;
  }

  .next-steps li:hover {
    color: rgba(232, 230, 227, 0.9);
    transform: translateX(4px);
  }

  .next-steps li:last-child {
    margin-bottom: 0;
  }

  .next-steps li::before {
    content: counter(steps);
    position: absolute;
    left: 0;
    top: 0;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.625rem;
    font-weight: 600;
    color: rgba(249, 115, 22, 0.8);
    width: 1.25rem;
    height: 1.25rem;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #0a0a0a;
    border: 1px solid rgba(249, 115, 22, 0.3);
    border-radius: 50%;
    transition: all 200ms ease;
    z-index: 1;
  }

  .next-steps li:hover::before {
    background: #1a0f08;
    border-color: rgba(249, 115, 22, 0.5);
    box-shadow: 0 0 10px rgba(249, 115, 22, 0.3);
  }

  /* Responsive */
  @media (max-width: 700px) {
    .contact-main-inner {
      grid-template-columns: 1fr;
      gap: 2.5rem;
    }

    .email-text {
      font-size: 1.25rem;
    }
  }

  @media (max-width: 500px) {
    .contact-header {
      padding: 3.5rem 1.25rem 3rem;
    }

    .contact-header h1 {
      font-size: 1.5rem;
    }

    .contact-main {
      padding: 2.5rem 1.25rem 4rem;
    }

    .email-block {
      padding: 2rem 1.5rem;
    }

    .email-text {
      font-size: 1.125rem;
    }
  }
</style>
