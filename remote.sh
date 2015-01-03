#!/bin/sh

VAGRANT_ANSIBLE_REMOTE=vagrant-ansible-remote

ANSIBLE_BASE_FOLDER=${ANSIBLE_BASE_FOLDER:=$BASE_FOLDER/ansible}

VAGRANT_OPTIONAL=true source ${VAGRANT_ANSIBLE_REMOTE}/ansible/run-args.sh

if [ "$ANSIBLE_RUN_LOCAL" = true ]; then
  source ${VAGRANT_ANSIBLE_REMOTE}/ansible/run.sh
else
  source ${VAGRANT_ANSIBLE_REMOTE}/vagrant/ssh-ansible.sh
fi
