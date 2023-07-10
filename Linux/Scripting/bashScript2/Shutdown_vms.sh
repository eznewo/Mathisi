#! /bin/bash

##### Script to turn off all your vms on the lab env't  #########

# this will shutdown all the remote hosts using ansible shell module
ansible all -m shell -a "shutdown now" -b

# This one will shutdown the Ansible controle node
sudo shutdown now

echo " All remote nodes and controler nodes are shutdown " 
