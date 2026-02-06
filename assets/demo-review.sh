#!/bin/bash
# Simulated crew-review output for demo GIF recording

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

sleep 0.8

# Banner
echo ""
printf "${PURPLE}${BOLD}╭──────────────────────────────────────────────────╮${RESET}\n"
sleep 0.1
printf "${PURPLE}${BOLD}│${RESET}  ${WHITE}${BOLD}CREW REVIEW${RESET} ${DIM}→${RESET} Dual Code Review                 ${PURPLE}${BOLD}│${RESET}\n"
sleep 0.1
printf "${PURPLE}${BOLD}│${RESET}  ${DIM}Reviewers: ${GREEN}Codex${RESET}${DIM} + ${BLUE}Gemini${RESET}                        ${PURPLE}${BOLD}│${RESET}\n"
sleep 0.1
printf "${PURPLE}${BOLD}╰──────────────────────────────────────────────────╯${RESET}\n"
echo ""
sleep 0.5

# Phase: capturing diff
printf "${YELLOW}${BOLD}⏳ CAPTURING DIFF${RESET}\n"
sleep 0.3
printf "   ${DIM}git diff main...HEAD${RESET}\n"
sleep 0.4
printf "   ${DIM}Found: ${GREEN}+147${RESET}${DIM} / ${RED}-23${RESET}${DIM} lines across 5 files${RESET}\n"
sleep 0.3
printf "   ${GREEN}✓${RESET} Diff captured\n"
echo ""
sleep 0.4

# Phase: building context
printf "${YELLOW}${BOLD}⏳ BUILDING REVIEW CONTEXT${RESET}\n"
sleep 0.3
printf "   ${DIM}Reading CLAUDE.md, project guidelines...${RESET}\n"
sleep 0.5
printf "   ${DIM}Attaching: style guide, test patterns, error handling rules${RESET}\n"
sleep 0.3
printf "   ${GREEN}✓${RESET} Context ready\n"
echo ""
sleep 0.4

# Phase: running reviewers in parallel
printf "${YELLOW}${BOLD}⏳ RUNNING REVIEWERS${RESET}\n"
sleep 0.3
printf "   ${GREEN}▸${RESET} Codex (gpt-5.3-codex) ${DIM}reviewing...${RESET}\n"
sleep 0.3
printf "   ${BLUE}▸${RESET} Gemini (gemini-3-pro) ${DIM}reviewing...${RESET}\n"
sleep 1.8
printf "   ${GREEN}✓${RESET} Codex review complete ${DIM}— 5 findings${RESET}\n"
sleep 0.5
printf "   ${BLUE}✓${RESET} Gemini review complete ${DIM}— 4 findings${RESET}\n"
echo ""
sleep 0.3

# Phase: aggregating
printf "${YELLOW}${BOLD}⏳ AGGREGATING & DEDUPLICATING${RESET}\n"
sleep 0.3
printf "   ${DIM}Cross-referencing findings...${RESET}\n"
sleep 0.4
printf "   ${CYAN}${BOLD}★${RESET} 3 overlapping findings → ${CYAN}${BOLD}HIGH CONFIDENCE${RESET}\n"
sleep 0.2
printf "   ${GREEN}✓${RESET} Unified report ready\n"
echo ""
sleep 0.5

# Final report
printf "${PURPLE}${BOLD}## Dual AI Code Review Results${RESET}\n"
echo ""

printf "${RED}${BOLD}### CRITICAL ${DIM}(must fix before merge)${RESET}\n"
printf "  ${CYAN}${BOLD}1.${RESET} ${WHITE}${BOLD}SQL injection in user query${RESET} ${DIM}— src/db/users.ts:42${RESET}\n"
printf "     ${CYAN}★ HIGH CONFIDENCE${RESET} ${DIM}— Both reviewers flagged this${RESET}\n"
printf "     ${DIM}Reviewer(s): ${GREEN}Codex${RESET}${DIM} + ${BLUE}Gemini${RESET}\n"
printf "     ${DIM}Raw string interpolation in SQL query.${RESET}\n"
printf "     ${DIM}Fix: Use parameterized queries via \$1, \$2 placeholders.${RESET}\n"
echo ""
sleep 0.3

printf "  ${CYAN}${BOLD}2.${RESET} ${WHITE}${BOLD}Auth bypass on admin endpoint${RESET} ${DIM}— src/api/admin.ts:18${RESET}\n"
printf "     ${CYAN}★ HIGH CONFIDENCE${RESET} ${DIM}— Both reviewers flagged this${RESET}\n"
printf "     ${DIM}Reviewer(s): ${GREEN}Codex${RESET}${DIM} + ${BLUE}Gemini${RESET}\n"
printf "     ${DIM}Missing role check — any authenticated user can access.${RESET}\n"
printf "     ${DIM}Fix: Add requireRole('admin') middleware.${RESET}\n"
echo ""
sleep 0.3

printf "${YELLOW}${BOLD}### IMPORTANT ${DIM}(strongly recommended)${RESET}\n"
printf "  ${CYAN}${BOLD}3.${RESET} ${WHITE}${BOLD}Unhandled promise rejection${RESET} ${DIM}— src/api/auth.ts:15${RESET}\n"
printf "     ${CYAN}★ HIGH CONFIDENCE${RESET} ${DIM}— Both reviewers flagged this${RESET}\n"
printf "     ${DIM}Reviewer(s): ${GREEN}Codex${RESET}${DIM} + ${BLUE}Gemini${RESET}\n"
printf "     ${DIM}Token refresh can throw but isn't caught.${RESET}\n"
printf "     ${DIM}Fix: Wrap in try/catch with retry logic.${RESET}\n"
echo ""
printf "  ${BOLD}4.${RESET} ${WHITE}${BOLD}Missing input validation${RESET} ${DIM}— src/routes/users.ts:27${RESET}\n"
printf "     ${DIM}Reviewer(s): ${GREEN}Codex${RESET}\n"
printf "     ${DIM}Request body not validated before DB write.${RESET}\n"
printf "     ${DIM}Fix: Add zod schema validation.${RESET}\n"
echo ""
sleep 0.3

printf "${DIM}### SUGGESTIONS ${DIM}(nice to have)${RESET}\n"
printf "  ${BOLD}5.${RESET} ${WHITE}Unused import${RESET} ${DIM}— src/utils/helpers.ts:3${RESET}\n"
printf "     ${DIM}Reviewer(s): ${BLUE}Gemini${RESET}\n"
printf "     ${DIM}lodash imported but never used. Remove the import.${RESET}\n"
echo ""

printf "${DIM}─────────────────────────────────────────────────${RESET}\n"
printf "${BOLD}Review Sources${RESET}\n"
printf "  ${GREEN}●${RESET} Codex (gpt-5.3-codex): 5 findings\n"
printf "  ${BLUE}●${RESET} Gemini (gemini-3-pro): 4 findings\n"
printf "  ${CYAN}★${RESET} Overlapping (high confidence): 3 findings\n"
echo ""
sleep 2
