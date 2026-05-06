---
title: "Trust technology"
collection: technical_notes
type: "Article"
permalink: /writing/2026-05-06-trust-technology
date: 2026-05-06
topic: "Autonomous systems · AI Agents · Engineering Philosophy"
---

Not blindly. But enough to let it operate in the real world.

I have noticed the best engineers lead with:

*"Think it should work"*

rather than

*"I must ensure it works."*

Trust gets tested the most when failure has real consequences.

If you are sitting in a Waymo, every turn makes you wonder: Is it making the right decision?
When you launch your first autonomous drone, there is always a moment where you think: Is this actually going to work? Will it avoid the intruder? Will it obey force commands?

I have these same conversations all the time with founders building autonomous systems. One drone startup founder I worked with was worried about their delivery accuracy. They did not trust their SLAM to operate within small error margins yet.

But the reality is: you do not need perfect autonomy to begin operating commercially.

There are workarounds:
- autokiosks
- human-guided placement
- partially manned operations
- hybrid systems

A successful first customer flight builds more confidence in the technology than months of trying to perfect it internally. The conversation shifts from:

*"Can this work?"* to *"How do we scale it?"*

And more often than not, the technology surprises you.

I am now noticing the exact same philosophy at Serval, where we build AI agents. Building agents feels different because so much of the system behavior depends on foundational models underneath you. You are giving models context, instructions, constraints — and trusting them to serve customer needs out in the world.

The risks are real.

Agents can grant overprivileged access.
Leak sensitive information.
Take incorrect actions.
Create security issues.

There are so many ways they can fail.

Early on at Serval, we had one engineer push a ~200 page PR that completely reconfigured our service architecture.

There was no realistic way to fully stage it. Production and staging were provisioned differently. The entire thing was codegenerated.

And honestly, no human can reason about large distributed systems with complete certainty anyway. We are not particularly good at processing that much complexity all at once.

The agents handled it better than we could.

At some point, you stop trying to control every part of the system and start learning how to trust it operationally.

Trust your technology enough to let it surprise you.
