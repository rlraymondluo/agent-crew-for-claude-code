---
name: crew-plan
description: Bounce an implementation plan off Codex and Gemini for independent review
---

Review the current implementation plan using the `crew-plan` agent.

Gather the implementation plan from the conversation context, then invoke the crew-plan agent to get independent feedback from Codex and Gemini.

The crew-plan agent will:
1. Auto-detect available CLI tools (Codex required, Gemini optional)
2. Build a review prompt with project context and the full plan
3. Run reviewer(s) in parallel if both are available
4. Produce a unified plan review with findings by severity
5. Support iterative refinement if you revise the plan

Run this before implementing any significant plan.
