#### The prerequisite for this script is parallel (http://www.gnu.org/software/parallel/)
#### This script is used to grep for a given string across multiple remote computes. Only precondition is the file to be searched should be in the same location across all the remote computes.
#### The third input param (computes.txt ) is the file that contains all the remote computes IP addresses. If there is specific user name like `app` this file should have it like username@IP. Each and every computes should be seperated by blank line

if [ "$#" -le 2 ]; then
    echo "Atleast Three parameters needed. First param: 'searchTerm'. Second param: 'Absolute path of file' Thid param: 'fileNameContainingComputesToBeSearched (app@ip1\n1pp@ip2)'"
    echo "EXAMPLE for multiple computes search ::: ./searchMultipleRemoteComputes gauri /log/splunk/splunk* computes.txt"
    echo "Content of computes.txt should be app@IP1 <<BlankLine>> app@IP2"
	exit
fi

echo grep $1 $2 | /usr/local/bin/parallel --onall --slf $3 
