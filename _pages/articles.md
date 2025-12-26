---
title: "Articles"
permalink: /articles/
layout: default
---

<div class="articles-page">
  <div class="articles-bg">
    <div class="bg-grid"></div>
    <div class="bg-glow bg-glow-1"></div>
    <div class="bg-glow bg-glow-2"></div>
  </div>

  {% assign all_posts = site.posts | where_exp: "post", "post.status != 'draft'" %}
  {% assign featured_post = all_posts | where: "featured", true | first %}

  <header class="articles-header {% if featured_post %}has-featured{% endif %}">
    <div class="articles-header-inner">
      <div class="header-text">
        <div class="terminal-prompt">
          <span class="prompt-symbol">$</span>
          <span class="prompt-text">ls articles/</span>
          <span class="cursor"></span>
        </div>
        <h1>Patterns observed.<br>Lessons extracted.</h1>

        <p class="articles-intro">
          The same failures show up everywhere. Here's what they look like up close.
        </p>
        <div class="header-accent"></div>
      </div>

      {% if featured_post %}
      <a href="{{ featured_post.url }}" class="featured-card">
        <span class="featured-badge">Featured</span>
        <span class="featured-date">{{ featured_post.date | date: "%B %d, %Y" }}</span>
        <h2>{{ featured_post.title }}</h2>
        {% if featured_post.excerpt %}
        <p>{{ featured_post.excerpt | strip_html | truncate: 120 }}</p>
        {% endif %}
        <span class="featured-cta">Read article <span class="featured-arrow">→</span></span>
      </a>
      {% endif %}
    </div>
  </header>
  {% assign non_featured = all_posts | where_exp: "post", "post.featured != true" %}
  {% assign pinned_all = non_featured | where: "pinned", true %}
  {% assign unpinned = non_featured | where_exp: "post", "post.pinned != true" %}
  {% assign pinned = pinned_all | slice: 0, 4 %}

  {% if all_posts.size > 0 %}

  {% if pinned.size > 0 %}
  <!-- Pinned Articles -->
  <section class="pinned-section">
    <div class="pinned-header">
      <span class="pinned-label">Pinned</span>
    </div>
    <div class="pinned-grid pinned-count-{{ pinned.size }}">
      {% for post in pinned %}
      <a href="{{ post.url }}" class="pinned-card">
        <span class="pinned-date">{{ post.date | date: "%Y.%m.%d" }}</span>
        <h3>{{ post.title }}</h3>
        {% if post.excerpt %}
        <p>{{ post.excerpt | strip_html | truncate: 100 }}</p>
        {% endif %}
        <span class="pinned-arrow">→</span>
      </a>
      {% endfor %}
    </div>
  </section>
  {% endif %}

  {% if unpinned.size > 0 %}
  <!-- More Articles -->
  <section class="articles-list">
    <div class="articles-list-header">
      <h2>All Articles</h2>
      <span class="articles-count">{{ unpinned.size }} total</span>
    </div>

    <div class="articles-grid">
      {% for post in unpinned %}
      <a href="{{ post.url }}" class="article-card">
        <div class="article-card-content">
          <span class="article-date">{{ post.date | date: "%B %d, %Y" }}</span>
          <h3>{{ post.title }}</h3>
          {% if post.excerpt %}
          <p>{{ post.excerpt | strip_html | truncate: 200 }}</p>
          {% endif %}
          <span class="article-cta">Read article <span class="article-arrow">→</span></span>
        </div>
      </a>
      {% endfor %}
    </div>
  </section>
  {% endif %}

  {% else %}
  <!-- No posts at all -->
  <section class="articles-empty-state">
    <div class="empty-icon">
      <svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
        <path d="M12 6.042A8.967 8.967 0 006 3.75c-1.052 0-2.062.18-3 .512v14.25A8.987 8.987 0 016 18c2.305 0 4.408.867 6 2.292m0-14.25a8.966 8.966 0 016-2.292c1.052 0 2.062.18 3 .512v14.25A8.987 8.987 0 0018 18a8.967 8.967 0 00-6 2.292m0-14.25v14.25"/>
      </svg>
    </div>
    <h2>No articles yet.</h2>
    <p>Writing follows incidents. Incidents come first.</p>
  </section>
  {% endif %}

</div>


<style>
  .articles-page {
    background: #000;
    min-height: calc(100vh - 44px);
    position: relative;
    overflow: hidden;
  }

  /* Background effects */
  .articles-bg {
    position: absolute;
    inset: 0;
    pointer-events: none;
    overflow: hidden;
  }

  .bg-grid {
    position: absolute;
    inset: 0;
    background-image:
      linear-gradient(rgba(251, 146, 60, 0.03) 1px, transparent 1px),
      linear-gradient(90deg, rgba(251, 146, 60, 0.03) 1px, transparent 1px);
    background-size: 60px 60px;
    mask-image: linear-gradient(180deg, rgba(0,0,0,0.4) 0%, transparent 50%);
    -webkit-mask-image: linear-gradient(180deg, rgba(0,0,0,0.4) 0%, transparent 50%);
  }

  .bg-glow {
    position: absolute;
    border-radius: 50%;
    filter: blur(100px);
    opacity: 0.4;
  }

  .bg-glow-1 {
    width: 600px;
    height: 600px;
    background: radial-gradient(circle, rgba(251, 146, 60, 0.15) 0%, transparent 70%);
    top: -200px;
    right: -100px;
    animation: glow-drift 20s ease-in-out infinite;
  }

  .bg-glow-2 {
    width: 400px;
    height: 400px;
    background: radial-gradient(circle, rgba(251, 146, 60, 0.1) 0%, transparent 70%);
    top: 300px;
    left: -150px;
    animation: glow-drift 25s ease-in-out infinite reverse;
  }

  @keyframes glow-drift {
    0%, 100% { transform: translate(0, 0); }
    50% { transform: translate(30px, 20px); }
  }

  /* Header */
  .articles-header {
    position: relative;
    padding: 5rem 1.5rem 4rem;
    border-bottom: 1px solid rgba(255, 255, 255, 0.04);
  }

  .articles-header-inner {
    max-width: 900px;
    margin: 0 auto;
    opacity: 0;
    transform: translateY(15px);
    animation: articles-fade-in 0.6s ease-out 0.1s forwards;
  }

  .articles-header.has-featured .articles-header-inner {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 3rem;
    align-items: center;
  }

  .header-text {
    max-width: 100%;
    min-width: 0;
    display: block;
  }

  .header-accent {
    margin-top: 2.5rem;
    height: 1px;
    background: linear-gradient(90deg, rgba(251, 146, 60, 0.5) 0%, rgba(251, 146, 60, 0.1) 50%, transparent 100%);
    max-width: 200px;
    opacity: 0;
    animation: accent-grow 0.8s ease-out 0.5s forwards;
  }

  @keyframes accent-grow {
    from {
      opacity: 0;
      max-width: 0;
    }
    to {
      opacity: 1;
      max-width: 200px;
    }
  }

  @keyframes articles-fade-in {
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  /* Featured Card (in header) */
  .featured-card {
    display: flex;
    flex-direction: column;
    position: relative;
    padding: 1.75rem;
    background: linear-gradient(135deg, rgba(251, 146, 60, 0.06) 0%, rgba(251, 146, 60, 0.02) 100%);
    border: 1px solid rgba(251, 146, 60, 0.2);
    border-radius: 10px;
    text-decoration: none;
    transition: all 300ms ease;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
    overflow: hidden;
  }

  .featured-card::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 80px;
    background: radial-gradient(ellipse at 50% 0%, rgba(251, 146, 60, 0.1) 0%, transparent 70%);
    pointer-events: none;
  }

  .featured-card:hover {
    background: linear-gradient(135deg, rgba(251, 146, 60, 0.1) 0%, rgba(251, 146, 60, 0.04) 100%);
    border-color: rgba(251, 146, 60, 0.4);
    transform: translateY(-4px);
    box-shadow:
      0 8px 30px rgba(0, 0, 0, 0.4),
      0 0 40px rgba(251, 146, 60, 0.12);
  }

  .featured-badge {
    position: absolute;
    top: 1rem;
    right: 1rem;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.5625rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    color: rgb(251, 146, 60);
    background: rgba(251, 146, 60, 0.15);
    padding: 0.3rem 0.6rem;
    border-radius: 3px;
  }

  .featured-date {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.6875rem;
    color: rgba(232, 230, 227, 0.4);
    margin-bottom: 0.625rem;
    position: relative;
  }

  .featured-card h2 {
    font-size: 1.25rem;
    font-weight: 700;
    color: rgba(232, 230, 227, 0.95);
    margin: 0 0 0.625rem;
    line-height: 1.3;
    letter-spacing: -0.02em;
    transition: color 200ms ease;
    position: relative;
  }

  .featured-card:hover h2 {
    color: rgb(251, 146, 60);
  }

  .featured-card p {
    font-size: 0.8125rem;
    line-height: 1.6;
    color: rgba(232, 230, 227, 0.5);
    margin: 0 0 1rem;
    flex: 1;
    position: relative;
  }

  .featured-cta {
    font-size: 0.8125rem;
    font-weight: 500;
    color: rgba(251, 146, 60, 0.8);
    display: inline-flex;
    align-items: center;
    gap: 0.4rem;
    position: relative;
  }

  .featured-arrow {
    transition: transform 200ms ease;
  }

  .featured-card:hover .featured-arrow {
    transform: translateX(4px);
  }

  /* Terminal prompt */
  .terminal-prompt {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.8125rem;
    color: rgba(251, 146, 60, 0.7);
    margin-bottom: 1.5rem;
    padding: 0.625rem 1rem;
    background: rgba(251, 146, 60, 0.05);
    border: 1px solid rgba(251, 146, 60, 0.15);
    border-radius: 4px;
    box-shadow:
      0 2px 10px rgba(0, 0, 0, 0.2),
      inset 0 1px 0 rgba(251, 146, 60, 0.1);
    position: relative;
  }

  .terminal-prompt::before {
    content: '';
    position: absolute;
    inset: -1px;
    border-radius: 5px;
    background: linear-gradient(135deg, rgba(251, 146, 60, 0.2) 0%, transparent 50%);
    -webkit-mask: linear-gradient(#fff 0 0) content-box, linear-gradient(#fff 0 0);
    -webkit-mask-composite: xor;
    mask-composite: exclude;
    padding: 1px;
    pointer-events: none;
  }

  .prompt-symbol {
    color: rgba(251, 146, 60, 0.9);
    font-weight: 600;
  }

  .prompt-text {
    position: relative;
  }

  .cursor {
    width: 8px;
    height: 14px;
    background: rgba(251, 146, 60, 0.7);
    animation: blink 1s step-end infinite;
    box-shadow: 0 0 8px rgba(251, 146, 60, 0.5);
  }

  @keyframes blink {
    50% { opacity: 0; }
  }

  .articles-header h1 {
    font-size: 2.5rem;
    font-weight: 700;
    color: rgba(232, 230, 227, 0.95);
    margin: 0;
    letter-spacing: -0.03em;
    line-height: 1.15;
  }

  .articles-intro {
    font-size: 1.0625rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.55);
    margin: 1.5rem 0 0;
    max-width: 520px;
  }

  /* Pinned Articles Grid */
  .pinned-section {
    position: relative;
    padding: 0 1.5rem 2rem;
    max-width: 900px;
    margin: 0 auto;
  }

  .pinned-header {
    margin-bottom: 1rem;
    opacity: 0;
    animation: articles-fade-in 0.6s ease-out 0.2s forwards;
  }

  .pinned-label {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.625rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    color: rgb(251, 146, 60);
    background: rgba(251, 146, 60, 0.15);
    padding: 0.375rem 0.75rem;
    border-radius: 3px;
  }

  .pinned-grid {
    display: grid;
    gap: 1rem;
    grid-template-columns: repeat(2, 1fr);
  }

  .pinned-count-1 {
    grid-template-columns: 1fr;
    max-width: 50%;
  }

  .pinned-count-3 .pinned-card:first-child {
    grid-column: span 2;
  }

  .pinned-card {
    display: flex;
    flex-direction: column;
    position: relative;
    padding: 1.5rem;
    background: rgba(251, 146, 60, 0.03);
    border: 1px solid rgba(251, 146, 60, 0.15);
    border-radius: 8px;
    text-decoration: none;
    opacity: 0;
    transform: translateY(10px);
    transition: all 250ms ease;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
  }

  .pinned-card::after {
    content: '';
    position: absolute;
    inset: 0;
    border-radius: 8px;
    background: radial-gradient(circle at 50% 0%, rgba(251, 146, 60, 0.1) 0%, transparent 60%);
    opacity: 0;
    transition: opacity 300ms ease;
    pointer-events: none;
  }

  .pinned-card:nth-child(1) { animation: articles-fade-in 0.5s ease-out 0.25s forwards; }
  .pinned-card:nth-child(2) { animation: articles-fade-in 0.5s ease-out 0.35s forwards; }
  .pinned-card:nth-child(3) { animation: articles-fade-in 0.5s ease-out 0.45s forwards; }
  .pinned-card:nth-child(4) { animation: articles-fade-in 0.5s ease-out 0.55s forwards; }

  .pinned-card:hover {
    background: rgba(251, 146, 60, 0.06);
    border-color: rgba(251, 146, 60, 0.35);
    transform: translateY(-4px);
    box-shadow:
      0 4px 12px rgba(0, 0, 0, 0.3),
      0 0 30px rgba(251, 146, 60, 0.08);
  }

  .pinned-card:hover::after {
    opacity: 1;
  }

  .pinned-date {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.6875rem;
    color: rgba(232, 230, 227, 0.4);
    margin-bottom: 0.5rem;
  }

  .pinned-card h3 {
    font-size: 1rem;
    font-weight: 600;
    color: rgba(232, 230, 227, 0.95);
    margin: 0 0 0.5rem;
    line-height: 1.3;
    transition: color 200ms ease;
  }

  .pinned-card:hover h3 {
    color: rgb(251, 146, 60);
  }

  .pinned-card p {
    font-size: 0.8125rem;
    line-height: 1.5;
    color: rgba(232, 230, 227, 0.5);
    margin: 0;
    flex: 1;
  }

  .pinned-arrow {
    position: absolute;
    bottom: 1rem;
    right: 1rem;
    font-size: 1rem;
    color: rgba(251, 146, 60, 0.4);
    transition: all 200ms ease;
    opacity: 0;
  }

  .pinned-card:hover .pinned-arrow {
    opacity: 1;
    color: rgba(251, 146, 60, 0.8);
    transform: translateX(2px);
  }

  /* Articles List */
  .articles-list {
    position: relative;
    padding: 3rem 1.5rem;
    max-width: 900px;
    margin: 0 auto;
    border-top: 1px solid rgba(255, 255, 255, 0.04);
  }

  .articles-list-header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 2rem;
    padding-bottom: 1rem;
    border-bottom: 1px solid rgba(255, 255, 255, 0.06);
    opacity: 0;
    animation: articles-fade-in 0.6s ease-out 0.3s forwards;
  }

  .articles-list-header h2 {
    font-size: 0.75rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.15em;
    color: rgba(232, 230, 227, 0.5);
    margin: 0;
  }

  .articles-count {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.6875rem;
    color: rgba(232, 230, 227, 0.35);
  }

  .articles-grid {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
  }

  .article-card {
    display: block;
    position: relative;
    padding: 2rem;
    background: linear-gradient(135deg, rgba(251, 146, 60, 0.04) 0%, rgba(251, 146, 60, 0.01) 100%);
    border-radius: 10px;
    text-decoration: none;
    overflow: hidden;
    opacity: 0;
    transform: translateY(15px);
    transition: all 300ms ease;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.25);
  }

  .article-card::before {
    content: '';
    position: absolute;
    inset: 0;
    border-radius: 10px;
    padding: 1px;
    background: linear-gradient(135deg, rgba(251, 146, 60, 0.25) 0%, rgba(251, 146, 60, 0.05) 50%, rgba(251, 146, 60, 0.15) 100%);
    -webkit-mask: linear-gradient(#fff 0 0) content-box, linear-gradient(#fff 0 0);
    -webkit-mask-composite: xor;
    mask-composite: exclude;
    pointer-events: none;
    transition: background 300ms ease;
  }

  .article-card::after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 100px;
    background: radial-gradient(ellipse at 50% 0%, rgba(251, 146, 60, 0.08) 0%, transparent 70%);
    opacity: 0;
    transition: opacity 300ms ease;
    pointer-events: none;
  }

  .article-card:nth-child(1) { animation: article-fade-in 0.5s ease-out 0.4s forwards; }
  .article-card:nth-child(2) { animation: article-fade-in 0.5s ease-out 0.5s forwards; }
  .article-card:nth-child(3) { animation: article-fade-in 0.5s ease-out 0.6s forwards; }
  .article-card:nth-child(4) { animation: article-fade-in 0.5s ease-out 0.7s forwards; }
  .article-card:nth-child(n+5) { animation: article-fade-in 0.5s ease-out 0.8s forwards; }

  @keyframes article-fade-in {
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  .article-card:hover {
    background: linear-gradient(135deg, rgba(251, 146, 60, 0.08) 0%, rgba(251, 146, 60, 0.02) 100%);
    transform: translateY(-5px);
    box-shadow:
      0 8px 30px rgba(0, 0, 0, 0.35),
      0 0 40px rgba(251, 146, 60, 0.1);
  }

  .article-card:hover::before {
    background: linear-gradient(135deg, rgba(251, 146, 60, 0.4) 0%, rgba(251, 146, 60, 0.1) 50%, rgba(251, 146, 60, 0.25) 100%);
  }

  .article-card:hover::after {
    opacity: 1;
  }

  .article-card-content {
    position: relative;
    z-index: 1;
    max-width: 600px;
  }

  .article-date {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.6875rem;
    color: rgba(232, 230, 227, 0.4);
    text-transform: uppercase;
    letter-spacing: 0.05em;
    display: block;
    margin-bottom: 0.75rem;
  }

  .article-card h3 {
    font-size: 1.375rem;
    font-weight: 700;
    color: rgba(232, 230, 227, 0.95);
    margin: 0 0 0.75rem;
    line-height: 1.25;
    letter-spacing: -0.02em;
    transition: color 200ms ease;
  }

  .article-card:hover h3 {
    color: rgb(251, 146, 60);
  }

  .article-card p {
    font-size: 0.9375rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.55);
    margin: 0 0 1.25rem;
  }

  .article-cta {
    font-size: 0.875rem;
    font-weight: 500;
    color: rgba(251, 146, 60, 0.8);
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
  }

  .article-arrow {
    transition: transform 200ms ease;
  }

  .article-card:hover .article-arrow {
    transform: translateX(4px);
  }

  /* Empty State */
  .articles-empty-state {
    padding: 6rem 1.5rem;
    text-align: center;
    opacity: 0;
    animation: articles-fade-in 0.6s ease-out 0.2s forwards;
  }

  .empty-icon {
    color: rgba(251, 146, 60, 0.3);
    margin-bottom: 1.5rem;
  }

  .articles-empty-state h2 {
    font-size: 1.25rem;
    font-weight: 600;
    color: rgba(232, 230, 227, 0.7);
    margin: 0 0 0.75rem;
  }

  .articles-empty-state p {
    font-size: 0.9375rem;
    color: rgba(232, 230, 227, 0.45);
    margin: 0;
  }

  /* CTA */
  .articles-cta {
    padding: 4rem 1.5rem;
    text-align: center;
    border-top: 1px solid rgba(255, 255, 255, 0.04);
  }

  .articles-cta-inner {
    max-width: 400px;
    margin: 0 auto;
  }

  .articles-cta p {
    font-size: 0.9375rem;
    color: rgba(232, 230, 227, 0.5);
    margin: 0 0 1.5rem;
  }

  .articles-cta a {
    display: inline-block;
    font-size: 0.875rem;
    font-weight: 500;
    color: rgba(251, 146, 60, 0.9);
    text-decoration: none;
    padding: 0.75rem 2rem;
    border: 1px solid rgba(251, 146, 60, 0.3);
    border-radius: 3px;
    transition: all 150ms ease;
  }

  .articles-cta a:hover {
    background: rgba(251, 146, 60, 0.1);
    border-color: rgba(251, 146, 60, 0.5);
    color: rgb(251, 146, 60);
  }

  /* Responsive */
  @media (max-width: 768px) {
    .articles-header.has-featured .articles-header-inner {
      display: flex !important;
      flex-direction: column !important;
      gap: 2rem;
    }

    .articles-header .header-text {
      display: block !important;
      width: 100% !important;
      order: 1;
    }

    .articles-header .featured-card {
      padding: 1.5rem;
      width: 100%;
      order: 2;
    }

    .featured-card h2 {
      font-size: 1.125rem;
      padding-right: 4rem;
    }
  }

  @media (max-width: 600px) {
    .articles-header {
      padding: 3.5rem 1.25rem 3rem;
    }

    .header-text h1,
    .articles-header h1 {
      font-size: 1.75rem;
    }

    .featured-card p {
      display: none;
    }

    .pinned-section {
      padding: 0 1.25rem 1.5rem;
    }

    .pinned-grid {
      grid-template-columns: 1fr;
    }

    .pinned-count-1 {
      max-width: 100%;
    }

    .pinned-count-3 .pinned-card:first-child {
      grid-column: span 1;
    }

    .pinned-card {
      padding: 1.25rem;
    }

    .pinned-card p {
      display: none;
    }

    .pinned-arrow {
      display: none;
    }

    .articles-list {
      padding: 2rem 1.25rem;
    }

    .article-card {
      padding: 1.5rem;
    }

    .article-card h3 {
      font-size: 1.125rem;
    }

    .article-card p {
      font-size: 0.875rem;
    }
  }
</style>
