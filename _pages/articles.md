---
title: "Articles"
permalink: /articles/
layout: page
---

<div class="articles-page">
  <div class="articles-page-inner">
    {% for post in site.posts %}
    <a href="{{ post.url }}" class="article-entry">
      <span class="article-entry-date">{{ post.date | date: "%Y.%m.%d" }}</span>
      <h2>{{ post.title }}</h2>
      {% if post.excerpt %}<p>{{ post.excerpt | strip_html | truncate: 200 }}</p>{% endif %}
    </a>
    {% endfor %}

    {% if site.posts.size == 0 %}
    <p class="articles-empty">No articles yet.</p>
    {% endif %}
  </div>
</div>

<style>
  .articles-page {
    padding: 2rem 0;
  }

  .articles-page-inner {
    max-width: 700px;
    margin: 0 auto;
  }

  .article-entry {
    display: block;
    text-decoration: none;
    padding: 1.5rem 1.75rem;
    margin: 0 -1.75rem 1rem;
    border-radius: 4px;
    border-left: 2px solid transparent;
    transition: all 150ms ease;
  }

  .article-entry:hover {
    background: rgba(255, 255, 255, 0.03);
    border-left-color: rgba(249, 115, 22, 0.5);
  }

  .article-entry-date {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.7rem;
    color: rgba(232, 230, 227, 0.4);
    display: block;
    margin-bottom: 0.5rem;
  }

  .article-entry h2 {
    font-size: 1.125rem;
    font-weight: 500;
    color: rgba(232, 230, 227, 0.9);
    margin: 0 0 0.5rem;
    transition: color 150ms ease;
  }

  .article-entry:hover h2 {
    color: rgba(249, 115, 22, 1);
  }

  .article-entry > p {
    font-size: 0.9rem;
    line-height: 1.6;
    color: rgba(232, 230, 227, 0.55);
    margin: 0;
  }

  .articles-empty {
    font-size: 0.9rem;
    color: rgba(232, 230, 227, 0.4);
    text-align: center;
    padding: 3rem 0;
  }
</style>
