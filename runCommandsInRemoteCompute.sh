array=(
10.117.10.147
10.117.10.110
10.116.137.205
10.116.137.204
)
for ip in "${array[@]}"
 do 
 	   ssh app@$ip 'cd /log/apche-tomcat;rm -rf *;cd /usr/local; ./shutdown.sh; ./startup.sh'
 done

### Reference Vairav and http://stackoverflow.com/questions/4412238/what-is-the-cleanest-way-to-ssh-and-run-multiple-commands-in-bash
