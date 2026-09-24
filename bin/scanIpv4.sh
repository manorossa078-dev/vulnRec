#!/bib/bash

sudo nmap --script vuln -sS -sC -sV -O -v "$1"