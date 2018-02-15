#!/bin/bash

clear
echo
echo
echo -n "Enter a domain: "
read domain

# Check for no answer
if [[ -z $domain ]]; then
     echo
     echo "[!] You didn't enter a domain."
     echo
     echo
     exit
fi

fierce -dns $domain

nikto -maxtime 2m -h $domain

nmap -sS --host-timeout 2m -v --open -p- $domain

nmap -sU -v --open -p 500,111,123,161,1434,6502,69,523,1604,7,19,11,13,37,53,137,177,5405 $domain
