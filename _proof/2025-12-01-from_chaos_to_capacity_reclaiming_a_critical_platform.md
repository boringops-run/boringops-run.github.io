---
title: "From Firestorm to Flywheel: A BoringOps Case Study"
excerpt: "How a quiet automation effort using shell scripts and a contract-as-code model turned a toxic, untrusted security platform into the organization’s most reliable asset."
tags: [case-study, automation, culture, stewardship]
author: Dan Zrobok
---

## The Bucket of Water Problem

When I joined a large financial institution as the Subject Matter Expert for a critical Security and ESB appliance, the platform was already famous.

Not for reliability.  
For damage.

It was a multimillion-dollar hardware investment. A critical hop in the infrastructure. A recurring topic in executive steering committees.

And it was a disaster.

The team consisted of exactly one other person. He handled deployments for every global region. Manually. Through a web UI. He wasn’t an engineer so much as a human release pipeline.

The appliance itself had a dangerous property.

Configuration changes behaved like dumping a bucket of water into the ocean. Once a change was applied, it dissolved into the whole. There was no native versioning, no meaningful history, no diff.

After a deployment, the system could no longer answer the only questions that keep operations teams sane and out of jail:

- **What** changed?
- **Who** changed it?
- **Why** did it change?

Every deployment erased certainty.  
Every change increased risk.  

The platform was a place where history went to die.

---

## The Firestorm

We split the world to survive.

My teammate kept Preprod and Production.  
I took Development and UAT.

This didn’t fix anything. It just revealed where the chaos would land first.

The handoff from Development to Engineering followed a familiar enterprise ritual. A `.ZIP` file containing opaque artifacts. A Word document describing manual configuration steps.

On paper, it looked like a process.  
In reality, it was a trap.

- **Naming Drift**  
  Key objects were named differently in each environment. A credential called `Trade_In` in Dev might be `Trade_In_V2` in UAT. These differences were rarely captured. Deployments broke immediately.

- **Shadow Configuration**  
  Environment-specific values never lived in the document. They arrived via side-channel email threads. Engineering wasn’t deploying configuration. We were deploying hearsay.

- **Certificate Detective Work**  
  TLS was everywhere. Engineering was responsible for collecting certificates from internal teams and external vendors, often without knowing who owned the service, what the certificate was for, or which environment it applied to.

The result was predictable.

UAT was constantly broken.  
Preprod was constantly broken.  
Production deployments failed often enough that our standard operating procedure was to **page the developers and screen-share** so they could log into the appliance and explain what was wrong.

That wasn’t an escalation path.

It was a confession.

Engineering had lost the ability to reason about the system.

---

## The War Room

The technical chaos created organizational damage.

Development and Engineering stopped collaborating and started blaming. Communication collapsed. The business looked at a critical platform and saw a liability.

The Lines of Business assumed delivery dates were fiction.

The existing engineer responded rationally.

When every change carries personal risk and public blame, the safest answer is **no**.

He said no to almost everything, almost all the time.

Productivity ground to a halt. The platform became radioactive. Too critical to remove. Too dangerous to touch.

This was not a tooling problem.

It was a **legibility problem**.

---

## The Pivot: Survival Engineering

I looked at the backlog, the broken environments, and the escalation noise and made a decision.

**I wasn’t going to live like this.**

This wasn’t rebellion.  
It was survival engineering.

The best innovation doesn’t come from strategy decks. It comes from putting a smart resource in a bad situation and giving them no other way out.

Against the explicit wishes of my teammate, who believed manual control was the only safety net, I quietly automated deployments.

No vendors.  
No approvals.  
No roadmap.

Just `curl`, shell scripts, and `git`.

I chose shell scripts deliberately. CI/CD tooling was coming. It always does. And every tool in the world can execute a shell script.

I wasn’t optimizing for modernity.  
I was optimizing for **longevity**.

---

## The Mechanism of Control

The scripts were just plumbing. The real change was philosophical.

I introduced **Stewardship** by redesigning how work moved through the system.

### 1. Build and Deploy Are Not the Same Thing

I split work into two explicit ticket types:

- **Build tickets** tracked functional change and linked back to the JIRA story.
- **Deploy tickets** tracked the act of moving that change into an environment.

Deployment stopped being an invisible side effect.  
It became an auditable event.

### 2. The Contract

I created a hard interface between Development and Engineering.

Not a wiki page.  
Not a document.

A **versioned, executable contract** stored in Git.

It defined exactly what had to be in the ZIP and how it had to be structured.

If the ZIP violated the contract, the script rejected it.

Standards stopped being advice.  
They became gates.

> If a contract isn’t executable, it’s a suggestion.  
> If it isn’t versioned, it’s a lie.

### 3. Making the ZIP Confess

Before deployment, the script cracked open the ZIP and generated a report:

- What objects were inside
- Which environment values were required
- What was missing

For the first time, Engineering could say:

“I can’t deploy this. I’m missing the vendor certificate for the payment gateway.”

Surprises disappeared.

### 4. Tokenized Reality

Environment-specific values were replaced with tokens at build time.

Each environment had a simple key-value file in Git. The deployment script resolved tokens at runtime.

Now we could see:

- who changed a value
- when they changed it
- why they changed it

The system’s state moved out of email chains and into version control.

Trust followed visibility.

---

## The Flywheel

The impact was immediate.

Within a year, I was performing roughly **10x the deployment volume** in lower environments using a fraction of the time.

Not because I was faster.

Because the system stopped fighting itself.

And when engineering stops firefighting, something rare happens.

It gets bored.

I took that boredom and worked with Development.

“You’re building a heavyweight, bespoke solution for every client. The platform already knows how to do this.”

We shifted to dynamic routing based on inbound URI.

We replaced brittle certificate handling with **trust chain validation plus an expected Distinguished Name**.

Certificates could expire.  
The system didn’t care.

An entire category of operational toil disappeared.

---

## The Long-Term Win

The platform transformed.

What had been a garbage dump on fire became a reliability engine.

Executive attention shifted from fear to confidence.

“Oh, updating that system is easy. Don’t worry.”

The business invested more money into it.

Not because we added headcount.

Because we removed chaos.

---

## The Final Test

Years later, centralized CI/CD tooling was mandated.

I had a choice.

Rewrite everything to embrace the shiny new platform features.  
Or port the shell scripts.

I ported the scripts in a few hours.

Since then, the CI/CD tooling has changed **three more times**.

If I had embraced the shiny abstractions, I would have rewritten the system three times.

The scripts kept running.  
Git kept telling the truth.  
The contract stayed valid.

That is BoringOps in practice.

The business thought they had a headcount problem.

They didn’t.

They had a **legibility problem**.

By making the system boring, visible, and predictable, we didn’t just survive the firestorm.

We put it out.
