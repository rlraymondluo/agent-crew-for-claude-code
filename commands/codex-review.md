---
name: codex-review
description: Run dual AI code review (Codex + optional Gemini) before creating a PR
---

Review the current changes using the `ai-reviewer` agent.

Gather the git diff of all changes (staged, unstaged, and committed on this branch vs main), then invoke the ai-reviewer agent to perform a comprehensive code review.

The ai-reviewer will:
1. Auto-detect available CLI tools (Codex required, Gemini optional)
2. Build a review prompt with project context and the full diff
3. Run reviewer(s) in parallel if both are available
4. Produce a unified review report with findings by severity

Run this before creating any pull request.
