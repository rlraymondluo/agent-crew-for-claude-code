#!/bin/bash
# Simulated crew-code output — modeled after Claude Code interactive terminal UI
# Uses ⏺/⎿ tool call indicators and plain text like the real CLI
# Ends after team composition to keep the GIF focused

BOLD='\033[1m'
DIM='\033[2m'
RESET='\033[0m'
CYAN='\033[36m'

sleep 0.8

printf "${BOLD}[CREW] ANALYZING TASK${RESET}\n"
printf "Incoming task: Add user profiles with avatar upload and admin dashboard\n"
printf "Detected agent composition: 1 Codex gpt-5.3-codex, 1 Claude opus-4.6, 1 Gemini gemini-3-pro\n"
echo ""
sleep 0.6

printf "  ${CYAN}⏺${RESET} ${BOLD}Bash${RESET} ${DIM}which codex${RESET}\n"
sleep 0.3
printf "    ${DIM}⎿${RESET} /usr/local/bin/codex\n"
echo ""
sleep 0.2

printf "  ${CYAN}⏺${RESET} ${BOLD}Bash${RESET} ${DIM}which gemini${RESET}\n"
sleep 0.3
printf "    ${DIM}⎿${RESET} /usr/local/bin/gemini\n"
echo ""
sleep 0.4

printf "All requested CLIs available. Building team roster.\n"
echo ""
sleep 0.5

printf "${BOLD}[CREW] TEAM COMPOSITION${RESET}\n"
echo ""
printf "  ${BOLD}Agent              Type             Model           Role${RESET}\n"
printf "  ${DIM}─────────────────  ───────────────  ──────────────  ──────────────────${RESET}\n"
sleep 0.5
printf "  codex-backend-1    codex-coder      gpt-5.3-codex   REST API + database\n"
sleep 0.8
printf "  claude-frontend-1  general-purpose  opus-4.6        Profile UI + avatar\n"
sleep 0.8
printf "  gemini-dashboard-1 general-purpose  gemini-3-pro    Admin dashboard\n"
echo ""
sleep 2.0
