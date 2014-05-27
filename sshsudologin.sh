#!/usr/bin/expect

#Usage sshsudologin.expect <host> <ssh user> <ssh password> <su user> <su password>

set timeout 60

spawn ssh [lindex $argv 1]@[lindex $argv 0]

expect "yes/no" { 
	send "yes\r"
	expect "*?assword" { send "[lindex $argv 2]\r" }
	} "*?assword" { send "[lindex $argv 2]\r" }

expect "$ " { send "sudo su - [lindex $argv 3]\r" }
expect "*?assword:" { send "[lindex $argv 4]\r" }
expect "web@ndc-www134:~" { send "cd www/htdocs-www\r" }
interact
