#### install pssh https://linux.die.net/man/1/pssh

#### have IPs in a single file

pssh -l app -h ips.txt -i 'pgrep -fl node | wc -l'

pssh  -H "10.49.140.61 109.49.9.102 107.81.136.118 110.46.10.90"  -l gauri -x '-i /Users/home/.ssh/remote_rsa' -P "cat /usr/home/index.js | grep log"
