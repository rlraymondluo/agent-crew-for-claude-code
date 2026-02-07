#!/bin/bash
# Simulated crew-review output — matches real agent output format
# Uses report structure from crew-review.md Step 4

PURPLE='\033[38;5;141m'
GREEN='\033[38;5;78m'
BLUE='\033[38;5;75m'
YELLOW='\033[38;5;220m'
RED='\033[38;5;203m'
BOLD='\033[1m'
DIM='\033[2m'
RESET='\033[0m'
WHITE='\033[97m'
CYAN='\033[38;5;117m'

sleep 0.6

# Prerequisites check
printf "${DIM}Codex CLI found: /usr/local/bin/codex${RESET}\n"
sleep 0.2
printf "${DIM}Gemini CLI found: /usr/local/bin/gemini${RESET}\n"
echo ""
sleep 0.3

# Step 1: Gather context
printf "${WHITE}${BOLD}Gathering review context...${RESET}\n"
printf "${DIM}Reading CLAUDE.md -- extracted project guidelines${RESET}\n"
printf "${DIM}git diff main...HEAD -- +147 / -23 lines across 5 files${RESET}\n"
printf "${DIM}Commits: feat(auth): add JWT middleware, feat(users): profile endpoints${RESET}\n"
echo ""
sleep 0.5

# Step 3: Run reviewers
printf "${GREEN}${BOLD}Running Codex review...${RESET}\n"
printf "${DIM}codex exec --sandbox read-only -m gpt-5.3-codex ...${RESET}\n"
sleep 0.3
printf "${BLUE}${BOLD}Running Gemini review...${RESET}  ${DIM}(in parallel)${RESET}\n"
printf "${DIM}gemini -m gemini-3-pro-preview ...${RESET}\n"
sleep 1.8
printf "${DIM}Codex review complete -- 5 findings${RESET}\n"
sleep 0.4
printf "${DIM}Gemini review complete -- 4 findings${RESET}\n"
printf "${DIM}Cross-referencing... 3 overlapping findings${RESET}\n"
echo ""
sleep 0.5

# Report (matches crew-review.md Step 4 format)
printf "${BOLD}## Dual AI Code Review Results${RESET}\n"
echo ""

printf "${RED}${BOLD}### CRITICAL (must fix before merge)${RESET}\n"
echo ""
printf "${BOLD}1. SQL injection in user query${RESET} ${DIM}-- src/db/users.ts:42${RESET}\n"
printf "   ${CYAN}HIGH CONFIDENCE${RESET} ${DIM}-- flagged by both Codex and Gemini${RESET}\n"
printf "   ${DIM}Reviewer(s): ${GREEN}Codex${RESET} ${DIM}+${RESET} ${BLUE}Gemini${RESET}\n"
printf "   ${DIM}Why: Raw string interpolation in SQL query${RESET}\n"
printf "   ${DIM}Fix: Use parameterized queries via \$1, \$2 placeholders${RESET}\n"
echo ""
printf "${BOLD}2. Auth bypass on admin endpoint${RESET} ${DIM}-- src/api/admin.ts:18${RESET}\n"
printf "   ${CYAN}HIGH CONFIDENCE${RESET} ${DIM}-- flagged by both Codex and Gemini${RESET}\n"
printf "   ${DIM}Reviewer(s): ${GREEN}Codex${RESET} ${DIM}+${RESET} ${BLUE}Gemini${RESET}\n"
printf "   ${DIM}Why: Missing role check -- any authenticated user can access admin${RESET}\n"
printf "   ${DIM}Fix: Add requireRole('admin') middleware${RESET}\n"
echo ""
sleep 0.3

printf "${YELLOW}${BOLD}### IMPORTANT (strongly recommended)${RESET}\n"
echo ""
printf "${BOLD}3. Unhandled promise rejection${RESET} ${DIM}-- src/api/auth.ts:15${RESET}\n"
printf "   ${CYAN}HIGH CONFIDENCE${RESET} ${DIM}-- flagged by both Codex and Gemini${RESET}\n"
printf "   ${DIM}Reviewer(s): ${GREEN}Codex${RESET} ${DIM}+${RESET} ${BLUE}Gemini${RESET}\n"
printf "   ${DIM}Fix: Wrap token refresh in try/catch with retry logic${RESET}\n"
echo ""
printf "${BOLD}4. Missing input validation${RESET} ${DIM}-- src/routes/users.ts:27${RESET}\n"
printf "   ${DIM}Reviewer(s): ${GREEN}Codex${RESET}\n"
printf "   ${DIM}Fix: Add zod schema validation on request body${RESET}\n"
echo ""
sleep 0.3

printf "${DIM}### SUGGESTIONS (nice to have)${RESET}\n"
echo ""
printf "${BOLD}5. Unused import${RESET} ${DIM}-- src/utils/helpers.ts:3${RESET}\n"
printf "   ${DIM}Reviewer(s): ${BLUE}Gemini${RESET}\n"
printf "   ${DIM}Fix: Remove unused lodash import${RESET}\n"
echo ""

printf "${DIM}---${RESET}\n"
printf "${BOLD}### Review Sources${RESET}\n"
printf "  ${GREEN}Codex${RESET} (gpt-5.3-codex): 5 findings\n"
printf "  ${BLUE}Gemini${RESET} (gemini-3-pro-preview): 4 findings\n"
printf "  Overlapping (high confidence): 3 findings\n"
echo ""
sleep 0.3
