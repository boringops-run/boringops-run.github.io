---
layout: default
title: "Contact"
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
      <h1>Let's see what's broken.</h1>
      <p class="contact-intro">
        This isn't a sales call. It's a fit assessment. We figure out if this work makes sense for your situation.
      </p>
    </div>
  </header>

  <section class="contact-main">
    <div class="contact-main-inner">
      <div class="contact-form-section">
        <form class="contact-form" action="https://formspree.io/f/placeholder" method="POST">
          <div class="form-group">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>
          </div>

          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
          </div>

          <div class="form-group">
            <label for="company">Company</label>
            <input type="text" id="company" name="company">
          </div>

          <div class="form-group">
            <label for="role">Your Role</label>
            <input type="text" id="role" name="role" placeholder="e.g., VP Engineering, CTO, Director of Platform">
          </div>

          <div class="form-group">
            <label for="interest">What brings you here?</label>
            <select id="interest" name="interest">
              <option value="">Select one...</option>
              <option value="assessment">Chaos Assessment - understand where capacity is leaking</option>
              <option value="tolerance">Chaos Tolerance Decision - force decisions about operational debt</option>
              <option value="executive">Executive Interference Audit - address leadership impact on incidents</option>
              <option value="stewardship">Ongoing Stewardship - interest in future retainer</option>
              <option value="unsure">Not sure yet - exploring options</option>
            </select>
          </div>

          <div class="form-group">
            <label for="context">Context</label>
            <textarea id="context" name="context" rows="5" placeholder="What's happening that brought you here? What have you tried? What would success look like?"></textarea>
          </div>

          <div class="form-group">
            <button type="submit">Send Message</button>
          </div>
        </form>
      </div>

      <aside class="contact-sidebar">
        <div class="sidebar-section">
          <h3>What Happens Next</h3>
          <ol class="next-steps">
            <li>Message received and reviewed</li>
            <li>Brief response within 2 business days</li>
            <li>If appropriate: 30-minute conversation to assess fit</li>
            <li>If fit: scoping discussion and proposal</li>
          </ol>
        </div>

        <div class="sidebar-section">
          <h3>Before You Reach Out</h3>
          <p>
            This work is not for everyone. If you're looking for reassurance,
            a vendor comparison, or someone to implement tooling, this isn't the right fit.
          </p>
          <p>
            If you're ready to surface uncomfortable truths and make binding decisions
            about operational chaos, we should talk.
          </p>
        </div>

        <div class="sidebar-section sidebar-section--alt">
          <h3>Direct Contact</h3>
          <p class="direct-email">
            <a href="mailto:hello@boringops.run">hello@boringops.run</a>
          </p>
        </div>
      </aside>
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
    animation: contact-fade-in 0.6s ease-out 0.1s forwards;
  }

  @keyframes contact-fade-in {
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
    padding: 3rem 1.5rem 6rem;
  }

  .contact-main-inner {
    max-width: 1000px;
    margin: 0 auto;
    display: grid;
    grid-template-columns: 1fr 320px;
    gap: 4rem;
  }

  /* Form */
  .contact-form-section {
    background: #0a0a0a;
    padding: 2.5rem;
    border-radius: 6px;
    border: 1px solid rgba(255, 255, 255, 0.06);
  }

  .form-group {
    margin-bottom: 1.5rem;
  }

  .form-group:last-child {
    margin-bottom: 0;
    margin-top: 2rem;
  }

  .form-group label {
    display: block;
    font-size: 0.8125rem;
    font-weight: 500;
    color: rgba(232, 230, 227, 0.7);
    margin-bottom: 0.5rem;
  }

  .form-group input,
  .form-group select,
  .form-group textarea {
    width: 100%;
    padding: 0.75rem 1rem;
    font-size: 0.9375rem;
    font-family: inherit;
    color: rgba(232, 230, 227, 0.9);
    background: #000;
    border: 1px solid rgba(255, 255, 255, 0.1);
    border-radius: 4px;
    transition: border-color 150ms ease;
  }

  .form-group input:focus,
  .form-group select:focus,
  .form-group textarea:focus {
    outline: none;
    border-color: rgba(249, 115, 22, 0.5);
  }

  .form-group input::placeholder,
  .form-group textarea::placeholder {
    color: rgba(232, 230, 227, 0.3);
  }

  .form-group select {
    cursor: pointer;
  }

  .form-group select option {
    background: #111;
    color: rgba(232, 230, 227, 0.9);
  }

  .form-group textarea {
    resize: vertical;
    min-height: 120px;
  }

  .form-group button {
    width: 100%;
    padding: 1rem;
    font-size: 0.9375rem;
    font-weight: 600;
    font-family: inherit;
    color: #000;
    background: rgba(249, 115, 22, 1);
    border: none;
    border-radius: 4px;
    cursor: pointer;
    box-shadow: 0 0 30px rgba(249, 115, 22, 0.2);
    transition: all 150ms ease;
  }

  .form-group button:hover {
    background: rgba(249, 115, 22, 0.9);
    box-shadow: 0 0 40px rgba(249, 115, 22, 0.3);
  }

  /* Sidebar */
  .contact-sidebar {
    padding-top: 0.5rem;
  }

  .sidebar-section {
    margin-bottom: 2.5rem;
  }

  .sidebar-section h3 {
    font-size: 0.75rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.15em;
    color: rgba(249, 115, 22, 0.8);
    margin: 0 0 1rem;
  }

  .sidebar-section p {
    font-size: 0.875rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.55);
    margin: 0 0 0.75rem;
  }

  .sidebar-section p:last-child {
    margin-bottom: 0;
  }

  .next-steps {
    list-style: none;
    padding: 0;
    margin: 0;
    counter-reset: steps;
  }

  .next-steps li {
    font-size: 0.875rem;
    line-height: 1.6;
    color: rgba(232, 230, 227, 0.6);
    padding-left: 2rem;
    margin-bottom: 0.75rem;
    position: relative;
    counter-increment: steps;
  }

  .next-steps li::before {
    content: counter(steps);
    position: absolute;
    left: 0;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.6875rem;
    color: rgba(249, 115, 22, 0.6);
    width: 1.25rem;
    height: 1.25rem;
    display: flex;
    align-items: center;
    justify-content: center;
    border: 1px solid rgba(249, 115, 22, 0.3);
    border-radius: 50%;
  }

  .sidebar-section--alt {
    padding: 1.5rem;
    background: rgba(249, 115, 22, 0.03);
    border: 1px solid rgba(249, 115, 22, 0.1);
    border-radius: 4px;
  }

  .direct-email a {
    color: rgba(249, 115, 22, 1);
    text-decoration: none;
    font-weight: 500;
  }

  .direct-email a:hover {
    text-decoration: underline;
  }

  /* Responsive */
  @media (max-width: 800px) {
    .contact-main-inner {
      grid-template-columns: 1fr;
      gap: 3rem;
    }

    .contact-sidebar {
      order: -1;
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 1.5rem;
    }

    .sidebar-section {
      margin-bottom: 0;
    }

    .sidebar-section--alt {
      grid-column: span 2;
    }
  }

  @media (max-width: 550px) {
    .contact-header {
      padding: 3.5rem 1.25rem 3rem;
    }

    .contact-header h1 {
      font-size: 1.5rem;
    }

    .contact-main {
      padding: 2rem 1.25rem 4rem;
    }

    .contact-form-section {
      padding: 1.5rem;
    }

    .contact-sidebar {
      grid-template-columns: 1fr;
    }

    .sidebar-section--alt {
      grid-column: span 1;
    }
  }
</style>
