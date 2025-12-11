---
title: "From 47 Incidents to 2: A Fintech Transformation"
description: "How a fast-growing fintech reduced production incidents by 96% in 12 weeks"
layout: single
industry: "Financial Services"
permalink: /case-studies/fintech-chaos-to-calm/
---

# From 47 Incidents to 2

**A fast-growing fintech was drowning in production incidents. In 12 weeks, we reduced them by 96%.**

---

## The Situation

A Series B fintech company had grown from 15 to 80 engineers in 18 months. The infrastructure had not kept pace.

**The symptoms were severe:**

- 47 production incidents in the previous quarter
- Average of 3 engineers per incident (pulling people from feature work)
- On-call rotation was referred to as "the punishment"
- Two senior engineers had quit citing burnout
- Deploys were scheduled for Tuesday mornings because "at least we have time to fix things before the weekend"

The VP of Engineering knew something had to change but did not know where to start. The problems felt interconnected and overwhelming.

---

## The Engagement

We began with a **Chaos Assessment**: a 3-week deep dive into the operational reality.

### What We Found

The incident count was high, but the root causes were concentrated:

1. **Observability chaos:** The monitoring was extensive but incoherent. 847 alerts were configured. 12 of them mattered.
2. **Deployment pipeline:** Zero automated rollback capability. Every bad deploy required manual intervention.
3. **Database connection management:** A single misconfigured connection pool was responsible for 40% of incidents.
4. **Runbook coverage:** 23% of critical paths had documentation. The rest was tribal knowledge.

### The Roadmap

We prioritized ruthlessly:

**Week 1-2:** Fix the database connection issue (single change, 40% of incidents eliminated)

**Week 3-4:** Alert rationalization (847 → 34 alerts, with clear ownership and runbooks)

**Week 5-8:** Deployment pipeline hardening (automated canary, one-click rollback)

**Week 9-12:** Runbook development and on-call training

---

## The Results

**After 12 weeks:**

| Metric | Before | After |
|--------|--------|-------|
| Quarterly incidents | 47 | 2 |
| Mean time to recovery | 4.2 hours | 23 minutes |
| Engineers per incident | 3.1 | 1.2 |
| Deploy frequency | Weekly | Daily |
| On-call pages (monthly) | 34 | 4 |

**Beyond the numbers:**

- On-call rotation rebranded from "the punishment" to "the quiet shift"
- Two engineers who had given notice rescinded their resignations
- Deploy day moved from Tuesday morning to "whenever we want"
- The CTO told the board that infrastructure was "no longer a concern"

---

## Key Lessons

1. **Most incidents have few root causes.** The 47 incidents looked like chaos but traced back to 4 issues.

2. **Quick wins build credibility.** The database fix in week 1 bought us organizational trust for everything that followed.

3. **Observability is not volume.** 847 alerts created noise. 34 alerts created clarity.

4. **Documentation is infrastructure.** Runbooks are not overhead. They are the difference between 4-hour and 23-minute recoveries.

---

{% include cta-banner.html
   title="Dealing with incident fatigue?"
   text="A Chaos Assessment will identify your root causes and give you a prioritized path to calm."
   cta="Schedule Your Assessment"
   url="/contact/?ref=case-study-fintech"
%}
