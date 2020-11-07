#!/bin/bash

echo "IP local"
hostname -I

echo "IP publica"
curl ifconfig.me 

echo ""

nmap --script=vuln,default 10.0.2.15

nmap --script http-headers scanme.nmap.org

nmap -v 189.175.125.237



