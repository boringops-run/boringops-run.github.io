---
layout: single
title: "The Blame Machine"
excerpt: "Attaching incident cost to individual performance reviews looks like accountability. It is a chaos generator. This is what a Chaos Assessment finds first."
header:
  teaser: /assets/images/metronome.png
tags: [case-study, incidents, accountability, culture, antipatterns]
classes: wide
author: Dan Zrobok
date: 2026-01-14
---

A post circulated recently about DoorDash's incident management philosophy:

> A buddy of mine ran a large part of the DoorDash engineering org. When an engineer caused an outage, they knew exactly what the revenue cost was, and that revenue cost was hung on that engineer. They didn't do fines, per se, but it went into performance reviews, and it definitely negatively impacted future promotions / raises - so essentially it was a delayed fine.
>
> More orgs should do this.

Whether this specific story is true does not matter. The recommendation is real. Many organizations already run softer versions of this system. The outcomes are predictable.

What does it produce? A blame machine for ensuring that every technical decision becomes a political calculation. It solves the one problem every enterprise does not have: insufficient politics embedded in engineering work.



## The Framing Problem

The language reveals everything.

"An engineer caused an outage."

Not: our system allowed a single engineer's action to produce this outcome. Not: our deployment pipeline lacked the safeguards to prevent this. Not: our architecture made this failure mode possible.

The individual is the point of failure, not the system that left a pile of oily rags in the corner and handed them a match.

This framing makes a specific claim about where reliability lives. It says reliability is a property of individual behavior rather than system design.

This claim is wrong. It has been wrong for decades. We know it is wrong because systems with proper blast radius, staged deploys, and automated rollback do not produce single-human revenue events. The entire field of reliability engineering exists to make individual error survivable. Scale does not justify individual attribution. It makes it more absurd. The bigger the system, the more reckless it is to pretend causality collapses to a single engineer.

Some leaders believe this creates discipline because outages feel "free" otherwise. If there is no consequence, they argue, there is no incentive to be careful.

But the consequence they created does not produce careful engineers. It produces silent, scared ones. And the system persists because executives want the upside of speed without owning the risk profile that speed creates. It is an abdication of leadership responsibility, outsourcing risk downward because fixing architectural debt, deployment pipelines, and blast radius is harder than punishing the last person who touched the code.



## Before the Incident

The engineer who spots a potential issue will run a quick calculation. They touched that code last month, but no one else has noticed the problem yet. If they report it, they become a suspect. Better to stay quiet and slip the fix into a future PR under the cover of another change. Or better yet, hope it never surfaces at all, because surfacing it early carries personal downside and zero personal upside.



## After the Incident

Even if you wanted this system to be fair, it cannot be.

Who decides the difference between bad luck and negligence?

If a deploy passes all tests, gets approved through the normal process, and still causes an outage because of an edge case nobody anticipated, is that the engineer's fault?

If they followed the documented procedure and the procedure was insufficient, do they own the revenue loss or does the person who wrote the procedure?

If the code review approved the change, does the reviewer share the blame? If the CI pipeline passed, does the platform team carry some of the weight?

In practice, these questions are political. The engineer with more organizational capital survives. The one without it absorbs the blow. What looks like accountability is actually a formalization of existing power dynamics with a financial wrapper.

The future is always obvious in hindsight. That is what makes this system unfalsifiable.

And because it is unfalsifiable, information flow collapses. The person holding information that would help debug an active incident will calculate whether sharing it implicates them before deciding whether to speak. Every postmortem becomes a negotiation over who holds the bag.

Blameless postmortems exist for a reason. Not because engineers are fragile. Because information flow during and after incidents determines whether the organization learns anything.



## The Talent Drain

The first cost shows up later.

That revenue loss, let's say $20,000, is gone. Attaching it to Shane's performance review does not recover it. The outage happened. Customers were affected. The money walked out the door.

That $20,000 feels large in a postmortem. It is microscopic compared to the cost of replacing a senior engineer, the lost throughput during ramp-up, and the slowdown imposed on everyone watching the lesson being taught.

The only question that matters now is: what happens next?

If you fix the system that allowed Shane's change to cause a $20,000 outage, you prevent the next one. If you blame Shane, you get one of three outcomes: Shane leaves, Shane stays and stops taking risk, or Shane stays and starts hoarding approvals and paper trails. All three are failure modes. None of them prevent the next outage.

And Shane might be your top performer.

The engineers most likely to cause outages are often the ones shipping the most code, touching the most systems, taking the most ownership. They are not the ones hiding in low-risk corners of the codebase waiting out the clock. Production incidents correlate with production activity.

Blame the people doing the work and you will eventually be left with people who learned that the safest move is to do as little as possible.

This is the real resource waste. Not the $20,000. That is a sunk cost. The waste is losing Shane, or worse, keeping Shane but teaching him to move slowly, document defensively, and never touch anything that could go wrong.

You have converted a high-output engineer into a bureaucrat optimizing for self-preservation.

Meanwhile, the pile of oily rags remains. The next Shane will find it.



## The Apparatus Waste

The second cost shows up immediately.

Someone built a system to calculate revenue impact per incident. Someone integrated that system with performance reviews. Someone created a process for attributing causation to specific engineers.

Managers now spend time in calibration sessions debating whether the $20,000 belongs to Shane or to the platform team that approved his change. HR has policies for how incident attribution affects promotion eligibility. Legal probably reviewed whether this creates liability exposure.

This is infrastructure. It required engineering time, management time, process design, and ongoing maintenance. It is a machine that runs continuously, consuming resources, producing outputs.

And every output it produces makes the organization worse.

The machine does not recover lost revenue. It does not prevent future outages. It does not improve system reliability. It does not surface architectural weaknesses. It does not reduce blast radius. It does not speed up detection or recovery.

It produces fear, politics, resume updates, and a culture where the optimal strategy is to avoid being the last person who touched anything.

This is compliance theater built on production incidents.

This is an expensive system for manufacturing dysfunction disguised as accountability engineering. The pattern shows up anywhere incident cost is treated as a performance signal. The details vary. The damage is identical.



## The Boring Alternative

Organizations that want to reduce outages should ask different questions.

Why was this change able to reach production without being caught? Why did our monitoring not alert before customer impact? Why was the blast radius large enough to matter? Why do we not have automated rollback? Why did our testing not cover this case?

These questions lead to systemic improvements. They produce guardrails, deployment constraints, better testing, smaller blast radii, faster detection, automated recovery.

They make the system more boring.

"Who do we blame?" leads to fear, politics, information hiding, and a culture where the safest move is to touch nothing.

The truly boring insight: if one person can cause an outage that costs measurable revenue, you do not have an engineer problem. You have an architecture problem. You have a deployment problem. You have a testing problem. You have a blast radius problem.

Punishing the person who happened to be holding the match when your pile of oily rags ignited does not make the rags less flammable. It just ensures nobody will tell you where the other piles are.



## What a Chaos Assessment Finds

Any system that ties incident cost to individual performance is, by definition, a chaos generator.

This is exactly what a [Chaos Assessment](/services/chaos-assessment/) surfaces. Not the obvious fires, but the machinery organizations build that they believe is productive when it is actively killing them.

The low-value, high-damage friction that leadership defends because it feels like rigor.

Any organization running this system would walk into that assessment convinced their incident attribution process is a competitive advantage. They would walk out with it listed as a primary source of operational chaos, with a clear cost attached and a decision to make: kill it or own the ongoing damage explicitly.

Because that is the choice. You can have a blame machine or you can have a learning organization. You cannot have both.

The revenue loss from the outage is gone. The only question is whether you spend more resources making everything worse, or whether you fix the system that made the outage possible in the first place.

One of those paths leads to fewer outages. The other leads to fewer engineers willing to touch production.

Anyone who builds this system chose that path and called it accountability.

They built theater and called it rigor.