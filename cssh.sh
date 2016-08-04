### Cluster ssh . Login to multiple remote computes and control using a single window https://sourceforge.net/projects/clusterssh/


/Users/gshanka/csshX-0.74/csshX --login $1 $2
/Users/gshanka/csshX-0.74/csshX --login app $@

### This is for using specific rsa pub key
/Users/gshanka/csshX-0.74/csshX --login app --ssh_args '-i /Users/gshanka/.ssh/xyz_rsa' $@
