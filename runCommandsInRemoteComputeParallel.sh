#### install pssh https://linux.die.net/man/1/pssh

#### have IPs in a single file

pssh -l app -h ips.txt -i 'pgrep -fl node | wc -l'
