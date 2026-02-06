#!/bin/bash
# Simulated crew-plan output for demo GIF recording

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
printf "${PURPLE}${BOLD}│${RESET}  ${WHITE}${BOLD}CREW PLAN${RESET} ${DIM}→${RESET} Dual Plan Review                   ${PURPLE}${BOLD}│${RESET}\n"
sleep 0.1
printf "${PURPLE}${BOLD}│${RESET}  ${DIM}Reviewers: ${GREEN}Codex${RESET}${DIM} + ${BLUE}Gemini${RESET}                        ${PURPLE}${BOLD}│${RESET}\n"
sleep 0.1
printf "${PURPLE}${BOLD}╰──────────────────────────────────────────────────╯${RESET}\n"
echo ""
sleep 0.5

# Phase: reading plan
printf "${YELLOW}${BOLD}⏳ READING PLAN${RESET}\n"
sleep 0.3
printf "   ${DIM}Extracting plan from conversation context...${RESET}\n"
sleep 0.6
printf "   ${DIM}Plan: \"Add JWT auth with refresh token rotation\"${RESET}\n"
sleep 0.3
printf "   ${GREEN}✓${RESET} Plan captured (4 steps, 6 files)\n"
echo ""
sleep 0.4

# Phase: sending to reviewers
printf "${YELLOW}${BOLD}⏳ SENDING TO REVIEWERS${RESET}\n"
sleep 0.3
printf "   ${GREEN}▸${RESET} Codex (gpt-5.3-codex) ${DIM}analyzing...${RESET}\n"
sleep 0.4
printf "   ${BLUE}▸${RESET} Gemini (gemini-3-pro) ${DIM}analyzing...${RESET}\n"
sleep 1.5
printf "   ${GREEN}✓${RESET} Codex review complete ${DIM}— 4 findings${RESET}\n"
sleep 0.6
printf "   ${BLUE}✓${RESET} Gemini review complete ${DIM}— 3 findings${RESET}\n"
echo ""
sleep 0.4

# Phase: aggregating
printf "${YELLOW}${BOLD}⏳ AGGREGATING FINDINGS${RESET}\n"
sleep 0.3
printf "   ${DIM}Cross-referencing reviews...${RESET}\n"
sleep 0.5
printf "   ${CYAN}${BOLD}★${RESET} 2 overlapping findings → ${CYAN}${BOLD}HIGH CONFIDENCE${RESET}\n"
sleep 0.3
printf "   ${GREEN}✓${RESET} Report ready\n"
echo ""
sleep 0.5

# Final report
printf "${PURPLE}${BOLD}## Dual Plan Review Results${RESET}\n"
echo ""

printf "${RED}${BOLD}### CRITICAL ${DIM}(must address before implementing)${RESET}\n"
printf "  ${CYAN}${BOLD}1.${RESET} ${WHITE}${BOLD}Refresh tokens stored in localStorage${RESET}\n"
printf "     ${CYAN}★ HIGH CONFIDENCE${RESET} ${DIM}— Both reviewers flagged this${RESET}\n"
printf "     ${DIM}Reviewer(s): ${GREEN}Codex${RESET}${DIM} + ${BLUE}Gemini${RESET}\n"
printf "     ${DIM}Store refresh tokens in httpOnly cookies instead.${RESET}\n"
printf "     ${DIM}localStorage is vulnerable to XSS attacks.${RESET}\n"
echo ""
sleep 0.3

printf "${YELLOW}${BOLD}### IMPORTANT ${DIM}(strongly recommended)${RESET}\n"
printf "  ${CYAN}${BOLD}2.${RESET} ${WHITE}${BOLD}Missing token revocation on password change${RESET}\n"
printf "     ${CYAN}★ HIGH CONFIDENCE${RESET} ${DIM}— Both reviewers flagged this${RESET}\n"
printf "     ${DIM}Reviewer(s): ${GREEN}Codex${RESET}${DIM} + ${BLUE}Gemini${RESET}\n"
printf "     ${DIM}Invalidate all refresh tokens when user changes password.${RESET}\n"
echo ""
printf "  ${BOLD}3.${RESET} ${WHITE}${BOLD}No rate limiting on /auth/refresh endpoint${RESET}\n"
printf "     ${DIM}Reviewer(s): ${GREEN}Codex${RESET}\n"
printf "     ${DIM}Add rate limiting to prevent token stuffing attacks.${RESET}\n"
echo ""
sleep 0.3

printf "${DIM}### SUGGESTIONS ${DIM}(nice to have)${RESET}\n"
printf "  ${BOLD}4.${RESET} ${WHITE}Consider adding token fingerprinting${RESET}\n"
printf "     ${DIM}Reviewer(s): ${BLUE}Gemini${RESET}\n"
printf "     ${DIM}Bind tokens to device fingerprint for extra security.${RESET}\n"
echo ""

printf "${DIM}─────────────────────────────────────────────────${RESET}\n"
printf "${BOLD}Review Sources${RESET}\n"
printf "  ${GREEN}●${RESET} Codex (gpt-5.3-codex): 4 findings\n"
printf "  ${BLUE}●${RESET} Gemini (gemini-3-pro): 3 findings\n"
printf "  ${CYAN}★${RESET} Overlapping (high confidence): 2 findings\n"
echo ""
sleep 2
