---
name: crew-code
description: Route a coding task to the best AI backend (Codex, Claude, or Gemini)
---

Route the current coding task using the `crew-code` agent.

The crew-code agent will:
1. Analyze the task and detect signals (frontend/backend, design/refactor, etc.)
2. Check CLI availability (Codex, Gemini)
3. Route to the best backend — Codex (default), Claude (frontend/design), or Gemini (on request)
4. Execute the task with the selected backend's workflow
5. Return a structured report with routing metadata and changes made
