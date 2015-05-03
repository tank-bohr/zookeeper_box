#!/bin/bash

export PYTHONUNBUFFERED=1
export ANSIBLE_FORCE_COLOR=true
export ANSIBLE_HOST_KEY_CHECKING=false
export ANSIBLE_SSH_ARGS='-o UserKnownHostsFile=/dev/null -o ControlMaster=auto -o ControlPersist=60s'

ansible-playbook\
  --user=vagrant\
  --ask-pass\
  --connection=ssh\
  --inventory-file=./.vagrant/provisioners/ansible/inventory\
  -vv provisioning/playbook.yml
