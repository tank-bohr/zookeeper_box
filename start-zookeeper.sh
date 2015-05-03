#!/bin/bash

export PYTHONUNBUFFERED=1
export ANSIBLE_FORCE_COLOR=true
export ANSIBLE_HOST_KEY_CHECKING=false
export ANSIBLE_SSH_ARGS='-o UserKnownHostsFile=/dev/null -o ControlMaster=auto -o ControlPersist=60s'

ansible all\
  --user=vagrant\
  --ask-pass\
  --ask-sudo-pass\
  --connection=ssh\
  --inventory-file=./.vagrant/provisioners/ansible/inventory\
  -vv -a "sudo /opt/zookeeper-3.4.6/bin/zkServer.sh restart"
