---
layout: home_splash
title: "BoringOps.Run"
permalink: /
---

<section class="s-opening">
  <div class="opening-inner">
    <p class="opening-line" data-typetext="Capacity leaks are identified."><span class="opening-line-text"></span></p>
    <p class="opening-line" data-typetext="Costs are made explicit."><span class="opening-line-text"></span></p>
    <p class="opening-punch" data-typetext="You decide what gets fixed and what stays broken."><span class="opening-punch-text"></span></p>
  </div>
</section>

<section class="s-pattern">
  <div class="pattern-inner">
    <p class="pattern-lead"><strong>The pattern is predictable.</strong></p>
    <div class="pattern-symptoms">
      <span>The same incidents recur</span>
      <span>Deployments require luck</span>
      <span>Knowledge lives in two heads</span>
      <span>On-call is punishment</span>
      <span>Fires keep winning</span>
      <span>Roadmap slips quarterly</span>
      <span>Monitoring is noise</span>
      <span>Falling forward the norm</span>
    </div>
    <p class="pattern-verdict">This isn't bad luck. It's architectural debt demanding payment.</p>
    <p class="pattern-cta">BoringOps applies structural discipline to remove it. <a href="/approach/">Learn the approach →</a></p>
  </div>
</section>

<section class="s-work">
  <div class="work-inner">
    <h2>Our Work</h2>

    <div class="work-sequence">
      <a href="/services/chaos_assessment/" class="work-item">
        <span class="work-num">01</span>
        <div class="work-content">
          <h3>Chaos Assessment</h3>
          <p>Where capacity leaks.</p>
        </div>
        <span class="work-arrow">→</span>
      </a>

      <a href="/services/tolerance/" class="work-item">
        <span class="work-num">02</span>
        <div class="work-content">
          <h3>Chaos Tolerance Decision</h3>
          <p>What gets fixed. What doesn't.</p>
        </div>
        <span class="work-arrow">→</span>
      </a>

      <!-- <a href="/services/executive-audit/" class="work-item">
        <span class="work-num">03</span>
        <div class="work-content">
          <h3>Executive Interference Audit</h3>
          <p>How leadership presence extends recovery time.</p>
        </div>
        <span class="work-arrow">→</span>
      </a> -->

      <div class="work-item work-item--soon">
        <span class="work-num">03</span>
        <div class="work-content">
          <h3>Ongoing Stewardship</h3>
          <p>Pressure against drift. Boredom is maintained.</p>
          <span class="work-soon">Coming soon</span>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="s-method">
  <div class="method-inner">
    <div class="method-item" data-keyword="Evidence" data-under="narrative">
      <span class="method-over"><span class="method-keyword"></span><span class="method-over-text"> over</span></span>
      <span class="method-under"></span>
    </div>
    <div class="method-item" data-keyword="Systems" data-under="individuals">
      <span class="method-over"><span class="method-keyword"></span><span class="method-over-text"> over</span></span>
      <span class="method-under"></span>
    </div>
    <div class="method-item" data-keyword="Deletion" data-under="addition">
      <span class="method-over"><span class="method-keyword"></span><span class="method-over-text"> over</span></span>
      <span class="method-under"></span>
    </div>
    <div class="method-item" data-keyword="Decisions" data-under="recommendations">
      <span class="method-over"><span class="method-keyword"></span><span class="method-over-text"> over</span></span>
      <span class="method-under"></span>
    </div>
  </div>
</section>

<section class="s-articles">
  <div class="articles-inner">
    <h2>Articles</h2>
    <div class="articles-list">
      {% for post in site.posts limit:3 %}
      <a href="{{ post.url }}" class="article-item">
        <span class="article-date">{{ post.date | date: "%Y.%m.%d" }}</span>
        <h3>{{ post.title }}</h3>
        {% if post.excerpt %}<p>{{ post.excerpt | strip_html | truncate: 120 }}</p>{% endif %}
      </a>
      {% endfor %}
    </div>
    {% if site.posts.size > 3 %}
    <a href="/articles/" class="articles-more">All Articles →</a>
    {% endif %}
  </div>
</section>

<section class="s-boundary">
  <div class="boundary-inner">
    <h2>Not A Fit</h2>
    <div class="boundary-grid">
      <span>Leadership wants reassurance instead of constraint</span>
      <span>The answer must be a vendor or tool</span>
      <span>Findings will be filtered or softened</span>
      <span>Heroics are rewarded instead of examined</span>
    </div>
  </div>
</section>

<section class="s-cta">
  <div class="cta-noise" aria-hidden="true">deploy failed • rollback initiated • incident bridge open • who has access • check the runbook • which runbook • page the on-call • they're on PTO • escalate to platform • platform is underwater • we did this last month • nobody documented it • the fix is a restart • why does restarting fix it • don't touch that service • only Jake knows • Jake left • check Confluence • Confluence is wrong • deploy failed • customer escalation • all hands on deck • war room • same error different day • works on my machine • check the logs • which logs • logging is broken • we'll fix it next sprint • added to backlog • backlog is 400 items • priority 1 • everything is priority 1 • AWS is down • it's not DNS • it was DNS • cert expired • who renewed the cert • memory leak • disk full • connection pool exhausted • timeout • retry storm • cascading failure • single point of failure • no rollback plan • deploy failed • rollback initiated • incident bridge open • who has access • check the runbook • which runbook • page the on-call • they're on PTO • escalate to platform • platform is underwater • we did this last month • nobody documented it • the fix is a restart • why does restarting fix it • redis is full • kafka lag • OOM killed • zombie process • SSL handshake failed • rate limited • quota exceeded • permissions denied • token expired • secret rotated • config drift • missing env var • wrong branch • merge conflict • deploy failed • rollback initiated • incident bridge open • who has access • check the runbook • which runbook • page the on-call • they're on PTO • escalate to platform • platform is underwater • we did this last month • nobody documented it • the fix is a restart • why does restarting fix it • don't touch that service • only Jake knows • Jake left • check Confluence • Confluence is wrong • deploy failed • customer escalation • all hands on deck • war room • same error different day • works on my machine • check the logs • which logs • logging is broken • we'll fix it next sprint • added to backlog • backlog is 400 items • priority 1 • everything is priority 1 • AWS is down • it's not DNS • it was DNS • cert expired • who renewed the cert • memory leak • disk full • connection pool exhausted • timeout • retry storm • cascading failure • single point of failure • no rollback plan</div>
  <div class="cta-inner">
    <p><strong>This work begins with a Chaos Assessment.</strong></p>
    <a href="/contact/" class="cta-btn">Request a Chaos Assessment</a>
  </div>
</section>


<style>
  /* Base */
  .s-opening, .s-work, .s-method, .s-boundary, .s-cta {
    padding: 4rem 1.5rem;
    background: #000;
  }

  .s-opening {
    background: #000;
  }

  /* Alternating dark panels */
  .s-work,
  .s-boundary {
    background: #111;
  }

  /* Opening */
  .s-opening {
    padding: 1.25rem 1.5rem 2rem;
  }

  .opening-inner {
    position: relative;
    z-index: 1;
    width: fit-content;
    max-width: 100%;
    margin: 0 auto;
    padding: 2.5rem 3rem;
    border-left: 3px solid rgba(249, 115, 22, 0.6);
    background: linear-gradient(90deg, rgba(249, 115, 22, 0.04) 0%, transparent 60%), rgba(8, 8, 8, 0.8);
    opacity: 0;
    transition: opacity 0.5s ease-out;
  }

  .opening-inner.visible {
    opacity: 1;
  }

  .opening-line {
    font-size: 1.5rem;
    font-weight: 400;
    color: rgba(232, 230, 227, 0.85);
    margin: 0;
    line-height: 1.5;
    min-height: 1.5em;
    white-space: nowrap;
  }

  .opening-line::after {
    content: attr(data-typetext);
    visibility: hidden;
    display: block;
    height: 0;
    overflow: hidden;
  }

  .opening-punch {
    font-size: 1.5rem;
    font-weight: 600;
    color: rgba(249, 115, 22, 1);
    margin: 1.25rem 0 0;
    line-height: 1.5;
    min-height: 1.5em;
    white-space: nowrap;
  }

  .opening-punch::after {
    content: attr(data-typetext);
    visibility: hidden;
    display: block;
    height: 0;
    overflow: hidden;
  }

  .opening-cursor {
    display: inline-block;
    width: 3px;
    height: 1.1em;
    background: rgba(249, 115, 22, 0.9);
    margin-left: 2px;
    vertical-align: text-bottom;
    animation: opening-cursor-blink 0.4s ease-in-out infinite;
  }

  @keyframes opening-cursor-blink {
    0%, 100% { opacity: 0.9; }
    50% { opacity: 0.4; }
  }

  .opening-sub {
    font-size: 0.9375rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.6);
    margin: 1.75rem 0 0;
    padding-top: 1.25rem;
    border-top: 1px solid rgba(255, 255, 255, 0.08);
  }

  /* Pattern */
  .s-pattern {
    position: relative;
    padding: 4rem 1.5rem;
    background: #050505;
    border-top: 1px solid rgba(255, 255, 255, 0.06);
    overflow: hidden;
  }

  .pattern-inner {
    position: relative;
    z-index: 1;
    max-width: 700px;
    margin: 0 auto;
    font-weight: 700;
  }

  .pattern-lead {
    font-size: 1.5rem;
    color: rgba(232, 230, 227, 0.95);
    margin: 0 0 2rem;
    line-height: 1.4;
  }

  .pattern-lead strong {
    font-weight: 700;
  }

  .pattern-symptoms {
    display: flex;
    flex-wrap: wrap;
    gap: 0.75rem;
    margin: 0 0 2rem;
  }

  .pattern-symptoms span {
    position: relative;
    font-size: 0.8125rem;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    color: rgba(239, 68, 68, 1);
    background: rgba(239, 68, 68, 0.4);
    border: 1px solid rgba(239, 68, 68, 0.7);
    padding: 0.5rem 1rem;
    border-radius: 2px;
    opacity: 0;
    transform: translateY(-20px) scale(0.95);
    transition: opacity 0.4s ease-out, transform 0.4s cubic-bezier(0.34, 1.56, 0.64, 1), color 1.5s ease-out 2s, border-color 1.5s ease-out 2s;
  }

  .pattern-symptoms span::before {
    content: '';
    position: absolute;
    inset: 0;
    border-radius: 2px;
    background:
      radial-gradient(ellipse at top left, transparent 70%, rgba(20, 10, 5, 0.8) 100%),
      radial-gradient(ellipse at top right, transparent 60%, rgba(30, 15, 8, 0.7) 100%),
      radial-gradient(ellipse at bottom left, transparent 65%, rgba(25, 12, 6, 0.75) 100%),
      radial-gradient(ellipse at bottom right, transparent 55%, rgba(35, 18, 10, 0.85) 100%),
      rgba(40, 20, 15, 0.6);
    opacity: 0;
    transition: opacity 1.5s ease-out 2s;
    pointer-events: none;
  }

  .pattern-symptoms span.landed {
    opacity: 1;
  }

  .pattern-symptoms span.burned {
    color: rgba(220, 140, 110, 0.95);
    border-color: rgba(30, 15, 10, 0.6);
    animation: smolder 3s ease-in-out infinite;
  }

  .pattern-symptoms span.burned::before {
    opacity: 1;
  }

  .pattern-symptoms span:nth-child(1).burned { animation-delay: 0s; }
  .pattern-symptoms span:nth-child(2).burned { animation-delay: -1.7s; }
  .pattern-symptoms span:nth-child(3).burned { animation-delay: -0.4s; }
  .pattern-symptoms span:nth-child(4).burned { animation-delay: -2.3s; }
  .pattern-symptoms span:nth-child(5).burned { animation-delay: -1.1s; }
  .pattern-symptoms span:nth-child(6).burned { animation-delay: -2.8s; }
  .pattern-symptoms span:nth-child(7).burned { animation-delay: -0.9s; }
  .pattern-symptoms span:nth-child(8).burned { animation-delay: -1.5s; }

  @keyframes smolder {
    0%, 100% {
      box-shadow:
        0 0 4px rgba(255, 100, 30, 0.3),
        inset 0 0 8px rgba(255, 60, 20, 0.1),
        inset 2px 2px 4px rgba(0, 0, 0, 0.5),
        inset -2px -2px 4px rgba(0, 0, 0, 0.5);
      filter: brightness(1);
    }
    25% {
      box-shadow:
        0 0 8px rgba(255, 80, 20, 0.4),
        inset 0 0 12px rgba(255, 50, 10, 0.15),
        inset 3px 2px 5px rgba(0, 0, 0, 0.6),
        inset -2px -3px 5px rgba(0, 0, 0, 0.5);
      filter: brightness(1.1);
    }
    50% {
      box-shadow:
        0 0 3px rgba(200, 60, 20, 0.2),
        inset 0 0 6px rgba(200, 40, 10, 0.08),
        inset 2px 3px 4px rgba(0, 0, 0, 0.55),
        inset -3px -2px 4px rgba(0, 0, 0, 0.45);
      filter: brightness(0.9);
    }
    75% {
      box-shadow:
        0 0 6px rgba(255, 90, 25, 0.35),
        inset 0 0 10px rgba(255, 55, 15, 0.12),
        inset 3px 3px 5px rgba(0, 0, 0, 0.5),
        inset -2px -2px 5px rgba(0, 0, 0, 0.55);
      filter: brightness(1.05);
    }
  }

  .pattern-symptoms span:nth-child(1).landed { transform: rotate(-4deg) translateY(-3px); }
  .pattern-symptoms span:nth-child(2).landed { transform: rotate(5deg) translateY(5px); }
  .pattern-symptoms span:nth-child(3).landed { transform: rotate(-2deg) translateY(-4px); }
  .pattern-symptoms span:nth-child(4).landed { transform: rotate(4deg) translateY(6px); }
  .pattern-symptoms span:nth-child(5).landed { transform: rotate(-5deg) translateY(-2px); }
  .pattern-symptoms span:nth-child(6).landed { transform: rotate(3deg) translateY(4px); }
  .pattern-symptoms span:nth-child(7).landed { transform: rotate(-3deg) translateY(5px); }
  .pattern-symptoms span:nth-child(8).landed { transform: rotate(6deg) translateY(-4px); }

  .pattern-verdict {
    font-size: 1.125rem;
    line-height: 1.6;
    color: rgba(232, 230, 227, 0.85);
    margin: 0 0 1.5rem;
    padding-left: 1rem;
    border-left: 2px solid rgba(239, 68, 68, 0.5);
  }

  .pattern-cta {
    font-size: 1rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.7);
    margin: 0;
  }

  .pattern-cta a {
    color: rgba(249, 115, 22, 0.9);
    text-decoration: none;
    transition: color 150ms ease;
  }

  .pattern-cta a:hover {
    color: rgba(249, 115, 22, 1);
  }

  /* Work */
  .s-work {
    padding: 5rem 1.5rem;
    border-top: 1px solid rgba(255, 255, 255, 0.06);
  }

  .work-inner {
    max-width: 700px;
    margin: 0 auto;
  }

  .s-work h2 {
    font-size: 1.75rem;
    font-weight: 600;
    color: rgba(232, 230, 227, 0.95);
    margin: 0 0 2.5rem;
  }

  .work-sequence {
    display: flex;
    flex-direction: column;
    gap: 0;
  }

  .work-item {
    display: flex;
    align-items: flex-start;
    gap: 1.5rem;
    text-decoration: none;
    padding: 1.75rem 0;
    border-bottom: 1px solid rgba(255, 255, 255, 0.06);
    transition: opacity 0.6s ease-out, transform 0.6s ease-out;
    opacity: 0;
    transform: translateX(-20px);
  }

  .work-item:first-child {
    border-top: 1px solid rgba(255, 255, 255, 0.06);
  }

  .work-item.visible {
    opacity: 1;
    transform: translateX(0);
  }

  .work-num {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.75rem;
    font-weight: 600;
    color: rgba(0, 0, 0, 1);
    background: rgba(249, 115, 22, 0.85);
    padding: 0.35rem 0.5rem;
    border-radius: 2px;
    flex-shrink: 0;
    margin-top: 0.15rem;
  }

  .work-content {
    flex: 1;
    min-width: 0;
  }

  .work-item h3 {
    font-size: 1.2rem;
    font-weight: 600;
    color: rgba(232, 230, 227, 0.95);
    margin: 0 0 0.4rem;
    transition: color 200ms ease;
  }

  .work-item:hover h3 {
    color: rgba(249, 115, 22, 1);
  }

  .work-item p {
    font-size: 0.95rem;
    line-height: 1.6;
    color: rgba(232, 230, 227, 0.6);
    margin: 0;
  }

  .work-arrow {
    font-size: 1.25rem;
    color: rgba(249, 115, 22, 0.3);
    flex-shrink: 0;
    margin-top: 0.1rem;
    transition: color 200ms ease, transform 200ms ease;
  }

  .work-item:hover .work-arrow {
    color: rgba(249, 115, 22, 0.8);
    transform: translateX(4px);
  }

  .work-item--soon {
    cursor: default;
  }

  .work-item--soon .work-num {
    background: rgba(255, 255, 255, 0.15);
    color: rgba(232, 230, 227, 0.4);
  }

  .work-item--soon h3,
  .work-item--soon p {
    color: rgba(232, 230, 227, 0.35) !important;
  }

  .work-item--soon:hover h3 {
    color: rgba(232, 230, 227, 0.35) !important;
  }

  .work-soon {
    display: inline-block;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.65rem;
    font-weight: 500;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    color: rgba(232, 230, 227, 0.3);
    border: 1px solid rgba(255, 255, 255, 0.1);
    padding: 0.25rem 0.5rem;
    margin-top: 0.5rem;
    border-radius: 2px;
  }

  .work-intro {
    font-size: 1.0625rem;
    line-height: 1.7;
    color: rgba(232, 230, 227, 0.75);
    margin: 0;
  }

  /* Method */
  .s-method {
    padding: 4.5rem 1.5rem;
    background: linear-gradient(180deg, #0a0a0a 0%, #000 100%);
    border-top: 1px solid rgba(249, 115, 22, 0.15);
    border-bottom: 1px solid rgba(249, 115, 22, 0.08);
  }

  .method-inner {
    max-width: 800px;
    margin: 0 auto;
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 0.5rem;
  }

  .method-item {
    font-size: 0.875rem;
    font-weight: 500;
    letter-spacing: 0.01em;
    padding: 0.5rem 2rem;
    border-right: 1px solid rgba(255, 255, 255, 0.1);
    display: grid;
    align-items: center;
    justify-items: center;
  }

  .method-item:last-child {
    border-right: none;
  }

  /* Stack both spans in same grid cell initially */
  .method-over, .method-under {
    grid-row: 1;
    grid-column: 1;
    text-align: center;
    white-space: nowrap;
  }

  .method-over {
    color: rgba(232, 230, 227, 0.65);
    z-index: 2;
    background: linear-gradient(180deg, #0a0a0a 0%, #000 100%);
    padding: 0 4px;
    transition: transform 0.4s ease-out;
    visibility: hidden;
  }

  .method-over.typing {
    visibility: visible;
  }

  .method-keyword {
    color: rgba(249, 115, 22, 0.9);
  }

  .method-over-text {
    opacity: 0;
    transition: opacity 0.15s ease;
  }

  .method-item.keyword-done .method-over-text {
    opacity: 1;
  }

  .method-under {
    color: rgba(232, 230, 227, 0.65);
    z-index: 1;
    transition: transform 0.4s ease-out;
  }

  /* After animation completes, slide apart vertically */
  .method-item.complete .method-over {
    transform: translateY(-0.9em);
    background: transparent;
  }

  .method-item.complete .method-under {
    transform: translateY(0.9em);
  }

  .method-cursor {
    display: inline-block;
    width: 2px;
    height: 1em;
    background: rgba(249, 115, 22, 0.9);
    margin-left: 1px;
    vertical-align: text-bottom;
    animation: method-cursor-blink 0.4s ease-in-out infinite;
  }

  @keyframes method-cursor-blink {
    0%, 100% { opacity: 0.9; }
    50% { opacity: 0.4; }
  }

  /* Articles */
  .s-articles {
    padding: 5rem 1.5rem;
    background: #111;
    border-top: 1px solid rgba(255, 255, 255, 0.06);
  }

  .articles-inner {
    max-width: 700px;
    margin: 0 auto;
  }

  .s-articles h2 {
    font-size: 0.7rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.2em;
    color: rgba(249, 115, 22, 0.8);
    margin: 0 0 2rem;
  }

  .articles-list {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
  }

  .article-item {
    display: block;
    text-decoration: none;
    padding: 1.25rem 1.5rem;
    margin: 0 -1.5rem;
    border-radius: 4px;
    border-left: 2px solid transparent;
    transition: all 150ms ease;
  }

  .article-item:hover {
    background: rgba(255, 255, 255, 0.03);
    border-left-color: rgba(249, 115, 22, 0.5);
  }

  .article-date {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 0.7rem;
    color: rgba(232, 230, 227, 0.4);
    display: block;
    margin-bottom: 0.375rem;
  }

  .article-item h3 {
    font-size: 1rem;
    font-weight: 500;
    color: rgba(232, 230, 227, 0.9);
    margin: 0 0 0.375rem;
    transition: color 150ms ease;
  }

  .article-item:hover h3 {
    color: rgba(249, 115, 22, 1);
  }

  .article-item > p {
    font-size: 0.875rem;
    line-height: 1.6;
    color: rgba(232, 230, 227, 0.55);
    margin: 0;
  }

  .articles-more {
    display: inline-block;
    font-size: 0.8125rem;
    color: rgba(249, 115, 22, 0.8);
    text-decoration: none;
    margin-top: 1.5rem;
    padding: 0.5rem 0;
    transition: color 150ms ease;
  }

  .articles-more:hover {
    color: rgba(249, 115, 22, 1);
  }

  /* Boundary */
  .s-boundary {
    padding: 4rem 1.5rem;
    background:
      radial-gradient(ellipse 80% 50% at 50% 100%, rgba(239, 68, 68, 0.04) 0%, transparent 60%),
      #111;
  }

  .boundary-inner {
    max-width: 600px;
    margin: 0 auto;
    padding: 2rem 2.5rem;
    background: rgba(239, 68, 68, 0.02);
    border: 1px solid rgba(239, 68, 68, 0.12);
    border-radius: 4px;
    box-shadow: 0 0 40px rgba(239, 68, 68, 0.03);
  }

  .s-boundary h2 {
    font-size: 0.7rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.2em;
    color: rgba(239, 68, 68, 0.7);
    margin: 0 0 1.5rem;
    text-align: center;
  }

  .boundary-grid {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 0.75rem;
  }

  .boundary-grid span {
    font-size: 0.8125rem;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    color: rgba(232, 230, 227, 0.5);
    background: rgba(239, 68, 68, 0.08);
    border: 1px solid rgba(239, 68, 68, 0.2);
    padding: 0.5rem 1rem;
    border-radius: 2px;
    text-decoration: line-through;
    text-decoration-color: rgba(239, 68, 68, 0.6);
  }

  .boundary-grid span:nth-child(1) { transform: rotate(-2deg); }
  .boundary-grid span:nth-child(2) { transform: rotate(3deg) translateY(4px); }
  .boundary-grid span:nth-child(3) { transform: rotate(-3deg) translateY(-2px); }
  .boundary-grid span:nth-child(4) { transform: rotate(2deg) translateY(3px); }

  /* CTA */
  .s-cta {
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
    font-size: 0.75rem;
    line-height: 1.8;
    color: rgba(255, 255, 255, 0.25);
    padding: 1rem;
    user-select: none;
    pointer-events: none;
    word-break: break-word;
    overflow: hidden;
    mask-image: radial-gradient(ellipse 100% 100% at 50% 50%, black 20%, transparent 70%);
    -webkit-mask-image: radial-gradient(ellipse 100% 100% at 50% 50%, black 20%, transparent 70%);
    animation: cta-noise-pulse 4s ease-in-out infinite;
  }

  @keyframes cta-noise-pulse {
    0%, 100% { opacity: 0.4; }
    50% { opacity: 1; }
  }

  .cta-inner {
    position: relative;
    z-index: 1;
  }

  .cta-inner p {
    font-size: 1.125rem;
    color: rgba(232, 230, 227, 0.8);
    margin: 0 0 2rem;
  }

  .cta-inner a {
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

  .cta-inner a:hover {
    background: rgba(249, 115, 22, 0.9);
    box-shadow: 0 0 60px rgba(249, 115, 22, 0.5);
    transform: translateY(-1px);
    animation: none;
  }

  /* Responsive */
  @media (max-width: 800px) {
    .opening-inner {
      padding: 2rem 2rem;
    }

    .opening-lead, .opening-punch {
      font-size: 1.25rem;
    }

    .opening-sub {
      font-size: 0.875rem;
    }

    .work-grid {
      grid-template-columns: 1fr;
      gap: 2.5rem;
    }

    .method-inner {
      flex-wrap: wrap;
      gap: 0.75rem 0;
    }

    .method-item {
      padding: 0.25rem 1.25rem;
    }

    .method-item:nth-child(2) {
      border-right: none;
    }

    .boundary-inner {
      padding: 1.5rem 1.5rem;
    }
  }

  @media (max-width: 550px) {
    .s-opening, .s-work {
      padding: 3.5rem 1.25rem;
    }

    .opening-inner {
      padding: 1.5rem 1.25rem;
    }

    .opening-lead, .opening-punch {
      font-size: 1rem;
      white-space: normal;
    }

    .method-inner {
      flex-direction: column;
      gap: 0.5rem;
    }

    .method-item {
      border-right: none;
      padding: 0.375rem 0;
    }

    .boundary-inner {
      padding: 1.25rem 1rem;
    }

    .boundary-grid span {
      font-size: 0.75rem;
    }
  }
</style>

<script>
(function() {
  'use strict';

  var TYPING_SPEED_MS = 45;
  var DELAY_BETWEEN_ITEMS = 175;
  var DELAY_BEFORE_OVER = 750;
  var DELAY_BEFORE_REVEAL = 75;
  var hasAnimatedMethod = false;
  var hasAnimatedOpening = false;

  function typeText(element, text, cursor, callback) {
    var charIndex = 0;
    element.textContent = '';
    element.appendChild(cursor);

    function typeNext() {
      if (charIndex < text.length) {
        element.textContent = text.substring(0, charIndex + 1);
        element.appendChild(cursor);
        charIndex++;
        setTimeout(typeNext, TYPING_SPEED_MS);
      } else {
        if (callback) callback();
      }
    }
    typeNext();
  }

  function animateItem(item, callback) {
    var keyword = item.getAttribute('data-keyword');
    var underText = item.getAttribute('data-under');
    var overEl = item.querySelector('.method-over');
    var keywordEl = item.querySelector('.method-keyword');
    var underEl = item.querySelector('.method-under');

    var cursor = document.createElement('span');
    cursor.className = 'method-cursor';

    // Phase 1: Type the "under" text (e.g., "narrative")
    typeText(underEl, underText, cursor, function() {
      setTimeout(function() {
        // Phase 2: Show the over container and type the keyword
        overEl.classList.add('typing');
        typeText(keywordEl, keyword, cursor, function() {
          // Remove cursor
          if (cursor.parentNode) {
            cursor.parentNode.removeChild(cursor);
          }

          // Reveal " over" text
          item.classList.add('keyword-done');

          // Phase 3: Slide apart vertically to reveal full phrase
          setTimeout(function() {
            item.classList.add('complete');
            if (callback) callback();
          }, DELAY_BEFORE_REVEAL);
        });
      }, DELAY_BEFORE_OVER);
    });
  }

  function animateAllItems() {
    if (hasAnimatedMethod) return;
    hasAnimatedMethod = true;

    var items = document.querySelectorAll('.method-item');
    var currentIndex = 0;

    function animateNext() {
      if (currentIndex < items.length) {
        animateItem(items[currentIndex], function() {
          currentIndex++;
          setTimeout(animateNext, DELAY_BETWEEN_ITEMS);
        });
      }
    }
    animateNext();
  }

  function animateOpeningLines() {
    if (hasAnimatedOpening) return;
    hasAnimatedOpening = true;

    var lines = document.querySelectorAll('.opening-line');
    var punchEl = document.querySelector('.opening-punch');
    var allElements = Array.from(lines);
    if (punchEl) allElements.push(punchEl);

    var cursor = document.createElement('span');
    cursor.className = 'opening-cursor';

    var currentIndex = 0;

    function typeNextLine() {
      if (currentIndex < allElements.length) {
        var el = allElements[currentIndex];
        var textEl = el.querySelector('.opening-line-text') || el.querySelector('.opening-punch-text');
        var text = el.getAttribute('data-typetext');

        typeText(textEl, text, cursor, function() {
          currentIndex++;
          if (currentIndex < allElements.length) {
            setTimeout(typeNextLine, 300);
          } else {
            // Keep cursor blinking for a moment, then remove
            setTimeout(function() {
              if (cursor.parentNode) {
                cursor.parentNode.removeChild(cursor);
              }
            }, 800);
          }
        });
      }
    }

    typeNextLine();
  }

  function init() {
    // Track scroll direction
    var lastScrollY = window.scrollY;
    var scrollDirection = 'down';

    window.addEventListener('scroll', function() {
      scrollDirection = window.scrollY > lastScrollY ? 'down' : 'up';
      lastScrollY = window.scrollY;
    }, { passive: true });

    // Opening lines observer
    var openingInner = document.querySelector('.opening-inner');
    if (openingInner) {
      var openingObserver = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
          if (entry.isIntersecting && !hasAnimatedOpening) {
            if (scrollDirection === 'up' || window.yellowBannerComplete) {
              // Scrolling up or banner already done - show and animate immediately
              openingInner.classList.add('visible');
              animateOpeningLines();
              openingObserver.disconnect();
            } else {
              // Scrolling down - wait for yellow banner
              window.addEventListener('yellowBannerComplete', function() {
                if (!hasAnimatedOpening) {
                  animateOpeningLines();
                  openingObserver.disconnect();
                }
              }, { once: true });
            }
          }
        });
      }, { threshold: 0.1 });
      openingObserver.observe(openingInner);
    }

    // Method section observer
    var methodSection = document.querySelector('.s-method');
    if (methodSection) {
      var methodObserver = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
          if (entry.isIntersecting && !hasAnimatedMethod) {
            animateAllItems();
            methodObserver.disconnect();
          }
        });
      }, { threshold: 0.5 });
      methodObserver.observe(methodSection);
    }

    // Work items fade-up observer
    var workItems = document.querySelectorAll('.work-item');
    if (workItems.length) {
      var workObserver = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
          if (entry.isIntersecting) {
            var delay = Array.from(workItems).indexOf(entry.target) * 100;
            setTimeout(function() {
              entry.target.classList.add('visible');
            }, delay);
            workObserver.unobserve(entry.target);
          }
        });
      }, { threshold: 0.2, rootMargin: '0px 0px -10% 0px' });
      workItems.forEach(function(item) {
        workObserver.observe(item);
      });
    }

    // Pattern symptoms cascade and burn-out
    var patternSection = document.querySelector('.s-pattern');
    var symptomSpans = document.querySelectorAll('.pattern-symptoms span');
    if (patternSection && symptomSpans.length) {
      var patternObserver = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
          if (entry.isIntersecting) {
            // Cascade in with staggered delays
            symptomSpans.forEach(function(span, idx) {
              setTimeout(function() {
                span.classList.add('landed');
                // Burn out after landing
                setTimeout(function() {
                  span.classList.add('burned');
                }, 800);
              }, idx * 120);
            });
            patternObserver.disconnect();
          }
        });
      }, { threshold: 0.3 });
      patternObserver.observe(patternSection);
    }
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();

</script>
