#!/bin/bash
# Simulated crew-plan output — matches real agent output format
# Uses [CREW:BACKEND] prefixes and report structure from crew-plan.md

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
printf "${WHITE}${BOLD}Gathering project context...${RESET}\n"
printf "${DIM}Reading CLAUDE.md -- extracted 8 guidelines${RESET}\n"
printf "${DIM}Plan: \"Add JWT auth with refresh token rotation\" (4 steps, 6 files)${RESET}\n"
echo ""
sleep 0.5

# Step 3: Run reviewers
printf "${GREEN}${BOLD}Running Codex review...${RESET}\n"
printf "${DIM}codex exec --sandbox read-only -m gpt-5.3-codex ...${RESET}\n"
sleep 0.3
printf "${BLUE}${BOLD}Running Gemini review...${RESET}\n"
printf "${DIM}gemini -m gemini-3-pro-preview ...${RESET}\n"
sleep 1.5
printf "${DIM}Codex review complete -- 4 findings${RESET}\n"
sleep 0.4
printf "${DIM}Gemini review complete -- 3 findings${RESET}\n"
printf "${DIM}Cross-referencing... 2 overlapping findings${RESET}\n"
echo ""
sleep 0.5

# Report (matches crew-plan.md Step 4 format)
printf "${BOLD}## Crew Plan Review${RESET}\n"
echo ""
printf "${BOLD}### Review Iteration: 1${RESET}\n"
echo ""

printf "${RED}${BOLD}### CRITICAL (plan will fail or produce wrong results)${RESET}\n"
echo ""
printf "${BOLD}1. Refresh tokens stored in localStorage${RESET}\n"
printf "   ${CYAN}HIGH CONFIDENCE${RESET} ${DIM}-- flagged by both Codex and Gemini${RESET}\n"
printf "   ${DIM}Reviewer(s): ${GREEN}Codex${RESET} ${DIM}+${RESET} ${BLUE}Gemini${RESET}\n"
printf "   ${DIM}Why it matters: localStorage is vulnerable to XSS -- tokens can be stolen${RESET}\n"
printf "   ${DIM}Fix: Store refresh tokens in httpOnly cookies instead${RESET}\n"
echo ""
sleep 0.3

printf "${YELLOW}${BOLD}### IMPORTANT (significant improvements)${RESET}\n"
echo ""
printf "${BOLD}2. Missing token revocation on password change${RESET}\n"
printf "   ${CYAN}HIGH CONFIDENCE${RESET} ${DIM}-- flagged by both Codex and Gemini${RESET}\n"
printf "   ${DIM}Reviewer(s): ${GREEN}Codex${RESET} ${DIM}+${RESET} ${BLUE}Gemini${RESET}\n"
printf "   ${DIM}Fix: Invalidate all refresh tokens when user changes password${RESET}\n"
echo ""
printf "${BOLD}3. No rate limiting on /auth/refresh endpoint${RESET}\n"
printf "   ${DIM}Reviewer(s): ${GREEN}Codex${RESET}\n"
printf "   ${DIM}Fix: Add rate limiting to prevent token stuffing attacks${RESET}\n"
echo ""
sleep 0.3

printf "${DIM}### SUGGESTIONS (nice-to-haves)${RESET}\n"
echo ""
printf "${BOLD}4. Consider adding token fingerprinting${RESET}\n"
printf "   ${DIM}Reviewer(s): ${BLUE}Gemini${RESET}\n"
printf "   ${DIM}Fix: Bind tokens to device fingerprint for extra security${RESET}\n"
echo ""

printf "${DIM}---${RESET}\n"
printf "${BOLD}### Review Sources${RESET}\n"
printf "  ${GREEN}Codex${RESET} (gpt-5.3-codex): 4 findings\n"
printf "  ${BLUE}Gemini${RESET} (gemini-3-pro-preview): 3 findings\n"
printf "  Overlapping (high confidence): 2 findings\n"
echo ""
printf "${BOLD}### Overall Assessment${RESET}\n"
printf "  Plan has 1 critical security flaw (localStorage). Fix before implementing.\n"
echo ""
sleep 0.3
