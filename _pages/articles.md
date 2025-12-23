---
title: "Articles"
permalink: /articles/
layout: default
---

<div class="articles-page">
  <header class="articles-header">
    <div class="articles-header-inner">
      <div class="terminal-prompt">
        <span class="prompt-symbol">$</span>
        <span class="prompt-text">ls articles/</span>
        <span class="cursor"></span>
      </div>
      <h1>Patterns observed.<br>Lessons extracted.</h1>

      <p class="articles-intro">
        The same failures show up everywhere. Here's what they look like up close.
      </p>
    </div>
  </header>

  {% assign all_posts = site.posts | where_exp: "post", "post.status != 'draft'" %}
  {% assign pinned = all_posts | where: "pinned", true %}
  {% assign unpinned = all_posts | where_exp: "post", "post.pinned != true" %}
  {% assign posts = pinned | concat: unpinned %}
  {% assign featured = posts | first %}
  {% assign rest = posts | slice: 1, posts.size %}

  {% if posts.size > 0 %}

  <!-- Featured Article -->
  <section class="featured-section">
    <a href="{{ featured.url }}" class="featured-card">
      <div class="featured-badge">Latest</div>
      <div class="featured-content">
        <span class="featured-date">{{ featured.date | date: "%B %d, %Y" }}</span>
        <h2>{{ featured.title }}</h2>
        <p>{{ featured.excerpt | strip_html | truncate: 200 }}</p>
        <span class="featured-cta">Read article <span class="featured-arrow">→</span></span>
      </div>
    </a>
  </section>

  {% if rest.size > 0 %}
  <!-- More Articles -->
  <section class="articles-list">
    <div class="articles-list-header">
      <h2>More Writing</h2>
      <span class="articles-count">{{ rest.size }} remaining</span>
    </div>

    <div class="articles-grid">
      {% for post in rest %}
      <a href="{{ post.url }}" class="article-card">
        <div class="article-card-inner">
          <span class="article-date">{{ post.date | date: "%Y.%m.%d" }}</span>
          <h3>{{ post.title }}</h3>
          {% if post.excerpt %}
          <p>{{ post.excerpt | strip_html | truncate: 160 }}</p>
          {% endif %}
        </div>
        <span class="article-arrow">→</span>
      </a>
      {% endfor %}
    </div>
  </section>
  {% endif %}

  {% else %}
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
  }

  /* Header */
  .articles-header {
    padding: 5rem 1.5rem 4rem;
    background: linear-gradient(180deg, rgba(251, 146, 60, 0.03) 0%, transparent 100%);
    border-bottom: 1px solid rgba(255, 255, 255, 0.04);
  }

  .articles-header-inner {
    max-width: 800px;
    margin: 0 auto;
    opacity: 0;
    transform: translateY(15px);
    animation: articles-fade-in 0.6s ease-out 0.1s forwards;
  }

  @keyframes articles-fade-in {
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
    color: rgba(251, 146, 60, 0.7);
    margin-bottom: 1.5rem;
    padding: 0.625rem 1rem;
    background: rgba(251, 146, 60, 0.05);
    border: 1px solid rgba(251, 146, 60, 0.15);
    border-radius: 4px;
  }

  .prompt-symbol {
    color: rgba(251, 146, 60, 0.9);
    font-weight: 600;
  }

  .cursor {
    width: 8px;
    height: 14px;
    background: rgba(251, 146, 60, 0.7);
    animation: blink 1s step-end infinite;
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

  /* Featured Article */
  .featured-section {
    padding: 0 1.5rem 3rem;
    max-width: 900px;
    margin: 0 auto;
  }

  .featured-card {
    display: block;
    position: relative;
    padding: 2.5rem;
    background: linear-gradient(135deg, rgba(251, 146, 60, 0.06) 0%, rgba(251, 146, 60, 0.02) 100%);
    border-radius: 12px;
    text-decoration: none;
    overflow: hidden;
    opacity: 0;
    transform: translateY(15px);
    animation: articles-fade-in 0.6s ease-out 0.2s forwards;
    transition: all 300ms ease;
  }

  .featured-card::before {
    content: '';
    position: absolute;
    inset: 0;
    border-radius: 12px;
    padding: 1px;
    background: linear-gradient(135deg, rgba(251, 146, 60, 0.4) 0%, rgba(251, 146, 60, 0.1) 50%, rgba(251, 146, 60, 0.3) 100%);
    -webkit-mask: linear-gradient(#fff 0 0) content-box, linear-gradient(#fff 0 0);
    -webkit-mask-composite: xor;
    mask-composite: exclude;
    pointer-events: none;
  }

  .featured-card:hover {
    background: linear-gradient(135deg, rgba(251, 146, 60, 0.1) 0%, rgba(251, 146, 60, 0.04) 100%);
    transform: translateY(-4px);
  }

  .featured-badge {
    position: absolute;
    top: 1.5rem;
    right: 1.5rem;
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

  .featured-content {
    max-width: 600px;
  }

  .featured-date {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.6875rem;
    color: rgba(232, 230, 227, 0.4);
    text-transform: uppercase;
    letter-spacing: 0.05em;
    display: block;
    margin-bottom: 1rem;
  }

  .featured-card h2 {
    font-size: 1.625rem;
    font-weight: 700;
    color: rgba(232, 230, 227, 0.95);
    margin: 0 0 1rem;
    line-height: 1.25;
    letter-spacing: -0.02em;
    transition: color 200ms ease;
  }

  .featured-card:hover h2 {
    color: rgb(251, 146, 60);
  }

  .featured-card p {
    font-size: 0.9375rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.55);
    margin: 0 0 1.5rem;
  }

  .featured-cta {
    font-size: 0.875rem;
    font-weight: 500;
    color: rgba(251, 146, 60, 0.8);
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
  }

  .featured-arrow {
    transition: transform 200ms ease;
  }

  .featured-card:hover .featured-arrow {
    transform: translateX(4px);
  }

  /* Articles List */
  .articles-list {
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
    gap: 0.5rem;
  }

  .article-card {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 1.5rem 1.75rem;
    background: transparent;
    border: 1px solid rgba(255, 255, 255, 0.04);
    border-left: 2px solid rgba(251, 146, 60, 0.2);
    border-radius: 0 4px 4px 0;
    text-decoration: none;
    transition: all 200ms ease;
    opacity: 0;
    transform: translateX(-10px);
  }

  .article-card:nth-child(1) { animation: article-slide-in 0.5s ease-out 0.35s forwards; }
  .article-card:nth-child(2) { animation: article-slide-in 0.5s ease-out 0.45s forwards; }
  .article-card:nth-child(3) { animation: article-slide-in 0.5s ease-out 0.55s forwards; }
  .article-card:nth-child(4) { animation: article-slide-in 0.5s ease-out 0.65s forwards; }
  .article-card:nth-child(5) { animation: article-slide-in 0.5s ease-out 0.75s forwards; }
  .article-card:nth-child(n+6) { animation: article-slide-in 0.5s ease-out 0.85s forwards; }

  @keyframes article-slide-in {
    to {
      opacity: 1;
      transform: translateX(0);
    }
  }

  .article-card:hover {
    background: rgba(251, 146, 60, 0.03);
    border-left-color: rgba(251, 146, 60, 0.6);
    transform: translateX(4px);
  }

  .article-card-inner {
    flex: 1;
  }

  .article-date {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.6875rem;
    color: rgba(232, 230, 227, 0.35);
    display: block;
    margin-bottom: 0.5rem;
  }

  .article-card h3 {
    font-size: 1.0625rem;
    font-weight: 600;
    color: rgba(232, 230, 227, 0.9);
    margin: 0 0 0.5rem;
    transition: color 200ms ease;
  }

  .article-card:hover h3 {
    color: rgb(251, 146, 60);
  }

  .article-card p {
    font-size: 0.875rem;
    line-height: 1.6;
    color: rgba(232, 230, 227, 0.5);
    margin: 0;
  }

  .article-arrow {
    font-size: 1.25rem;
    color: rgba(251, 146, 60, 0.4);
    margin-left: 1.5rem;
    transition: all 200ms ease;
    opacity: 0;
  }

  .article-card:hover .article-arrow {
    opacity: 1;
    color: rgba(251, 146, 60, 0.8);
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
  @media (max-width: 600px) {
    .articles-header {
      padding: 3.5rem 1.25rem 3rem;
    }

    .articles-header h1 {
      font-size: 1.75rem;
    }

    .featured-section {
      padding: 0 1.25rem 2rem;
    }

    .featured-card {
      padding: 1.5rem;
    }

    .featured-badge {
      top: 1rem;
      right: 1rem;
      font-size: 0.5625rem;
      padding: 0.25rem 0.5rem;
    }

    .featured-card h2 {
      font-size: 1.25rem;
      padding-right: 3rem;
    }

    .featured-card p {
      font-size: 0.875rem;
    }

    .articles-list {
      padding: 2rem 1.25rem;
    }

    .article-card {
      padding: 1.25rem;
    }

    .article-card p {
      display: none;
    }

    .article-arrow {
      display: none;
    }
  }
</style>
