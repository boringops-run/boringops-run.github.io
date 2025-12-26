---
title: "Your Maturity Score Is Lying to You"
excerpt: "You paid for a number. You got theater."
header:
  teaser: /assets/images/metronome.png
tags: [assessment, measurement, culture]
layout: post
author: Dan Zrobok
date: 2025-12-14
pinned: true
---

Your database failover only works when Rachel is available.

During her vacation last August, the standby promotion failed. The platform dropped into read-only mode for four hours. Customers could not complete transactions. Revenue impact was around $18K.

Your maturity assessment from six months ago rated your disaster recovery capabilities at 7.2 out of 10.

Both of these things are true. Only one of them is useful.

## The Number You Bought

Somewhere in your organization there is a score. Maybe it is a maturity level. Maybe it is a readiness percentage. Maybe it is a color on a dashboard that went from yellow to green last quarter.

Leadership references this number in board decks. It appears in OKRs. People got promoted when it improved.

And yet: Rachel is still your single point of failure. The deployment still has 32 manual steps. The last three outages traced back to the same brittle subsystem that everyone knows about and no one is authorized to fix.

The number improved. The system did not.

This is not a bug in the assessment. This is the assessment working exactly as designed.

## What Scores Actually Measure

A score is a proxy. The moment you publish it, the organization stops optimizing for the goal and starts optimizing for the number.

You have seen this happen. A "Simplicity Score" gets tied to lines of deployment script, so someone splits a 500-line script into five smaller ones. The score rises. The system is now harder to follow. A documentation coverage metric triggers a wave of auto-generated docs that no one reads. The metric improves. The tribal knowledge stays tribal.

This is not gaming. This is rational behavior. You told people the number mattered, so they moved the number. The fact that the underlying reality did not change is not their failure. It is yours, for believing a number could substitute for judgment.

Maturity models make this worse by institutionalizing the proxy. "Reach Level 4 by end of year" becomes an objective. Teams manufacture documentation, ceremonies, and standards to check boxes. The maturity level rises. The system stays fragile. And when things regress, no one updates the chart because admitting you slid from Managed back to Initial is career damage.

The model says you are optimizing. The 3 AM pages say otherwise.

## What an Honest Assessment Looks Like

There is no score in a BoringOps assessment. There is no maturity level. There is no dashboard you can screenshot for the board deck.

There is a description of how your system actually behaves.

Not how it is documented. Not how it is supposed to work. How it works when Rachel is on vacation and the new engineer is alone and the deploy is due before the long weekend.

Your production deployment involves 32 manual steps across four systems. Three of the last six deploys failed due to missed steps. Your newest engineer has never deployed without supervision.

That is not a grade. That is a fact. And facts do not round up to make leadership comfortable.

Every fact has a consequence attached. Downtime hours. Revenue impact. Engineering capacity trapped in toil instead of building. The assessment states the cost plainly so that leadership can make an adult decision: is this acceptable, and if not, what are you willing to spend to fix it?

No color coding. No fictional improvement trajectories. Just reality and the price of tolerating it.

## Why the Industry Sells Scores Instead

Narrative assessments are bad for the consulting business model.

A score can be repurchased annually. "Let's see if we moved from 6.8 to 7.4" is a $150K recurring engagement. A narrative statement like "Rachel is your single point of failure" cannot be resold. Either you fix it or you admit you do not care. There is no follow-up contract for that.

A score can be converted into an 18-month remediation roadmap with phases and workstreams and steering committees. A narrative assessment that says "your deployment has 32 manual steps and three of the last six failed" points to a specific problem with a specific fix. That is three weeks of work, not three quarters of billings.

The consulting industry avoids honest assessments because honest assessments are good for clients and bad for margins. BoringOps chooses the client.

## The Uncomfortable Part

If your leadership prefers the comfort of a green dashboard over the discomfort of a true operational picture, no assessment will help you. Not ours, not anyone's.

Scores exist because they provide cover. They let everyone point to a number and say things are improving even when the system is slowly rotting. They convert operational reality into a format that can be presented without anyone feeling implicated.

Narrative does not offer that cover. It names the problems. It names the costs. Sometimes it names the people. And then it asks leadership to decide.

Some organizations are not ready for that. They want the ritual of assessment without the obligation of honesty. We are not a good fit for them.

But if you suspect the numbers are lying, if you have watched scores improve while the 3 AM pages stayed constant, if you are tired of paying for theater, there is another way.

Don’t get a score, get a decision.