#!/bin/bash
printf '\033[8;%d;%dt' 13 150

read -p "Enter domain, formatted <_____.__>": DOMAIN
printf "Wait for dnstwist.py script to run, often __ minutes. Shell will prompt again when script finishes...\n"
python dnstwist.py -f csv -o .\\Output_files\\$DOMAIN.csv -r --dictionary dictionaries\\dnstwist_website_dictionary.dict --tld dictionaries\\dnstwist_website_tlds.dict $DOMAIN

printf "Done. If script failed to output, try:\n1. Replace directory path with cmd.\n2. In the resulting command line, place and run the following command."
printf "\n\ndnstwist.py -f csv -o .\\Output_files\\$DOMAIN.csv -r --dictionary dictionaries\\dnstwist_website_dictionary.dict --tld dictionaries\\dnstwist_website_tlds.dict $DOMAIN\n\n"


read -n1 -r -p "Press any key to end..." key