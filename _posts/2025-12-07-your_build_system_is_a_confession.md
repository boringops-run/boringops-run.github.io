---
layout: post
title: "Your Build System Is a Confession"
excerpt: "You have a swipe app. Why do you have 300 build targets?"
tags: [boringops, ci, architecture, governance, complexity]
classes: wide
author: Dan Zrobok
date: 2025-12-07
---

Tinder open sourced Bazel Diff to survive 60-minute builds across more than 300 build targets.

That is real engineering. It is also a confession.

Somewhere between target 50 and target 300, someone should have asked why a swipe app needed this much complexity. No one did. Or someone did and was ignored. Now the system requires dedicated tooling just to remain usable.

If you recognize this pattern, this article is for you.

## The Question No One Asks

You have a swipe app. Why do you have 300 build targets?

Not how do we make 300 targets faster. Why do you have 300 targets at all?

That question does not get asked because the answer is uncomfortable. Three hundred build targets are not a technical artifact. They are a social one. They are the accumulated residue of teams encoding org chart boundaries into software because no one had the authority to refuse.

Every target represents a decision that was easier to approve than to challenge. Multiply that by years and you get a build graph that no longer reflects the product. It reflects the political history of the company.

## The Vendor Arrives

When the build finally becomes intolerable, a vendor arrives with a solution. Smarter diffing. Selective execution. More caching. More compute.

The pitch is seductive. We can make this faster without changing it.

And they can. Builds drop from 60 minutes to 15. Developers stop complaining. The infrastructure team gets a win. Everyone moves on.

But the system remains intact. The 300 targets are still there. The complexity is still there. It has just been made survivable.

This is not negligence on the vendor's part. It is the business model. A vendor cannot tell you that most of your targets should not exist. That answer ends the engagement before it starts.

So the problem gets reframed. Complexity becomes a given. The only question is how to optimize within it.

## What You Actually Bought

You bought time. You did not buy a solution.

The clever tooling absorbs growth until it cannot. Three hundred becomes five hundred. Five hundred becomes a thousand. Each new target is painless because the system has been engineered to hide the cost.

Meanwhile, engineering capacity stays trapped. You still have three people who understand the build. You still cannot onboard someone without a month of context loading. You still cannot draw the dependency graph on a whiteboard.

The system tells you everything is fine. The invoices tell a different story.

## The Math No One Does

Take your infrastructure headcount. Multiply by fully loaded cost. That is what you are paying to keep this system alive.

Now ask: what would those engineers be building if the system were simple enough that it did not need them?

That delta is not on any dashboard. It does not show up in build metrics. But it compounds every quarter. It is the permanent tax you pay for refusing to subtract.

Most organizations never calculate this number because the answer is painful. It reveals that the infrastructure team is not building capabilities. It is absorbing consequences.

## Stewardship Is the Missing Force

The reason targets accumulate is not technical. It is political.

No one is empowered to say no. No one owns the build graph as a whole. Teams optimize locally and push costs globally. The system drifts because no one is accountable for coherence.

This is the absence of Stewardship.

Stewardship is not a role. It is the political authority to refuse. To look at a proposed target and ask: what failure does this isolate, and why does that isolation matter? To force boundaries to justify themselves against Simplicity and Longevity.

Without that authority, every local optimization wins and the whole system loses.

## The Other Path

Subtraction is harder than optimization. It requires saying no to work that already shipped. It requires telling teams that their boundaries were mistakes. It requires acknowledging that past decisions created future cost.

But it changes the trajectory.

A target audit forces every boundary to justify itself. Targets that cannot explain their existence do not survive. The build graph gets shaped to match the product, not the org chart.

Refusal becomes an operating principle. The system becomes legible again. New engineers can understand it. The infrastructure team shrinks because the infrastructure no longer needs constant intervention.

This is not a vendor engagement. Vendors optimize within complexity because that is where their tools live. This is a Stewardship engagement. It attacks complexity because that is where the cost lives.

## The Test

If you need an algorithm to tell you what is safe to skip, the system has already failed. It no longer tells the truth about itself. It cannot be understood by those who did not build it.

If you cannot draw your build graph on a whiteboard, you do not have a build system. You have an archaeological record of unresolved decisions.

One path makes today bearable while pushing risk into tomorrow.

The other makes tomorrow simpler than today.

This is what Stewardship looks like when it is enforced.