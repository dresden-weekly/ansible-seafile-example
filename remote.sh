#!/bin/bash

VAGRANT_ANSIBLE_REMOTE=vagrant-ansible-remote
BASE_FOLDER=${BASE_FOLDER:=`pwd`}
ANSIBLE_BASE_FOLDER=${ANSIBLE_BASE_FOLDER:=$BASE_FOLDER/ansible}

source ansible/run.sh
