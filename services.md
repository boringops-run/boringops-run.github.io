---
title: "Services"
layout: single
description: "BoringOps consulting services - from chaos assessments to full operational transformations"
permalink: /services/
---

# Our Services

Every engagement is designed to move your operations from chaos toward calm. We meet you where you are and build toward where you need to be.

---

{% for service in site.data.services %}
<div id="{{ service.id }}" style="margin-bottom: 4rem; padding-top: 1rem;">

## {{ service.title }}

<p style="color: var(--accent); font-size: 1.1rem; margin-bottom: 1rem; font-style: italic;">{{ service.tagline }}</p>

{{ service.description }}

### What You Get

<ul>
{% for item in service.deliverables %}
<li>{{ item }}</li>
{% endfor %}
</ul>

**Typical Duration:** {{ service.duration }}

**Ideal For:** {{ service.ideal_for }}

</div>

---

{% endfor %}

## Not Sure Where to Start?

Most engagements begin with a **Chaos Assessment**. It is the fastest way to understand your current state and prioritize what matters.

{% include cta-banner.html
   title="Let's Map Your Chaos"
   text="A 2-4 week engagement that delivers clarity and a concrete roadmap."
   cta="Schedule a Chaos Assessment"
   url="/contact/?service=chaos-assessment"
%}

---

## Engagement Models

### Project-Based

Fixed scope, fixed timeline, fixed price. Best for assessments and discrete transformations. You know exactly what you are getting and when.

### Retainer

Ongoing advisory and support. Guaranteed response times, monthly check-ins, strategic guidance. Best for organizations that want continuous operational improvement.

### Embedded

We work as an extension of your team for a defined period. Deep integration, maximum knowledge transfer. Best for complex transformations or teams building internal capability.

<p class="text-center mt-4">
  <a href="/contact/" class="btn btn--primary btn--large">Discuss Your Needs</a>
</p>
