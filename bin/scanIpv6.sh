#!/bin/bash

sudo nmap --script vuln -6 -sS -sC -sV -O -v "$1"