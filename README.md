# SE-recon-very-active

Just a quick bash script wrapper to use with kali, 

The script takes any provided domain name and then runs it through fierce to find any sub domain names, then Nikto scans the primary inputted domain name, followed by TCP Nmap 65535 ports and a UDP scan of common exploitable ports. 

Fierce and TCP Nmap scan are set to timeout after two minutes as both tend to go on and on, and this is only meant to give you a quick overview of any low hanging fruit.

To make SE-recon-very-active.sh executable and to run

chmod +x SE-recon-very-active.sh
./SE-recon-very-active.sh
