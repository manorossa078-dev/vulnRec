#!/bin/bash

set -euo pipefail

readonly REQUIREMENTS=("nmap" "gobuster")

. /etc/os-release

install() {
    case "$ID" in
        kali|ubuntu|debian)
            sudo apt update && sudo apt install $@ -y
            ;;
        omarchy|arch)
            sudo pacman -Syu && yes | sudo pacman -S $@
            ;;
        *)
            echo "Error: could not find your OS. Try adding one inside the script."
            ;;
    esac
}

install "${REQUIREMENTS[@]}"
echo "All installed!"