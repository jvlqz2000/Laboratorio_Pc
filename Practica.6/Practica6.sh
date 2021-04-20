#!/bin/bash

IPpriv=$(hostname -I)

IPpubl=$(curl ifconfig.me)

echo $IPpriv 
 
echo $IPpubl 

nmap --script imap-brute $IPpriv > Practica6.txt
nmap --script resolveall $IPpubl >> Practica6.txt
nmap --script http-cookie-flags.nse scanme.nmap.org >> Practica6.txt

base64 < Practica6.txt > Practica6_encode.txt
