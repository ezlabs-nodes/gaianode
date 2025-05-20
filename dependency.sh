#!/bin/bash

# ==========================================
# Color Definitions
# ==========================================
# Standard colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Bold colors
BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'
BOLD_YELLOW='\033[1;33m'
BOLD_BLUE='\033[1;34m'
BOLD_PURPLE='\033[1;35m'
BOLD_CYAN='\033[1;36m'
BOLD_WHITE='\033[1;37m'

# ==========================================
# Helper Functions
# ==========================================
function info() {
    echo -e "${BOLD_CYAN}[INFO]${NC} ${1}"
}

function success() {
    echo -e "${BOLD_GREEN}[SUCCESS]${NC} ${1}"
}

function warning() {
    echo -e "${BOLD_YELLOW}[WARNING]${NC} ${1}"
}

function error() {
    echo -e "${BOLD_RED}[ERROR]${NC} ${1}"
}

# ==========================================
# Banner Display
# ==========================================
function display_banner() {
    clear
    echo "========================================"
    echo -e "${YELLOW} Simple script is made by EZ-LABS${NC}"
    echo -e "-------------------------------------"

    echo -e "${BLUE}"
    echo -e " ███████╗███████╗     ██╗      █████╗ ██████╗ ███████╗"
    echo -e " ██╔════╝╚══███╔╝     ██║     ██╔══██╗██╔══██╗██╔════╝"
    echo -e " █████╗    ███╔╝█████╗██║     ███████║██████╔╝███████╗"
    echo -e " ██╔══╝   ███╔╝ ╚════╝██║     ██╔══██║██╔══██╗╚════██║"
    echo -e " ███████╗███████╗     ███████╗██║  ██║██████╔╝███████║"
    echo -e " ╚══════╝╚══════╝     ╚══════╝╚═╝  ╚═╝╚═════╝ ╚══════╝"
    echo -e "${NC}"

    echo -e "${PURPLE}╭───────────────────────────────────────────────────────╮${NC}"
    echo -e "${CYAN}│  ${YELLOW}⚡ ${WHITE}S i m p l i f y i n g   D e v e l o p m e n t ${YELLOW}⚡  ${CYAN}│${NC}"
    echo -e "${PURPLE}╰───────────────────────────────────────────────────────╯${NC}"

    echo -e "\n${GREEN}🚀 Node.js Tools  •  ${RED}Linux Automation  •  ${BLUE}Cloud Solutions${NC}\n"
    echo -e "${YELLOW}Github: ${GREEN}https://github.com/ezlabs-nodes${NC}"
    echo -e "${YELLOW}Telegram: ${GREEN}https://t.me/EzLabsNodes${NC}"
    echo -e "${YELLOW}Twitter: ${GREEN}@EzlabsNodes${NC}"
    echo "======================================================="
}

# ==========================================
# Main Script Execution
# ==========================================
display_banner

# System Update
info "Updating system packages..."
sudo apt update && sudo apt upgrade -y
if [ $? -eq 0 ]; then
    success "System packages updated successfully!"
else
    error "Failed to update system packages"
fi

# Install Dependencies
info "Installing Dependencies..."
curl -L -o dependency.sh https://raw.githubusercontent.com/PemburuSurya/gaianet/refs/heads/main/dependency.sh && chmod +x dependency.sh && sudo ./dependency.sh
if [ $? -eq 0 ]; then
    success "Dependencies installed successfully!"
else
    error "Failed to install dependencies"
fi

# Final Message
echo "==================================="
echo -e "${PURPLE}           EZ Labs Nodes       ${NC}"
echo "==================================="
echo -e "${GREEN}    Thanks for using this script!${NC}"
echo "==================================="
