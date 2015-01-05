@echo off
:: This script should be placed in the root of your project
SETLOCAL ENABLEEXTENSIONS
set OLD_CD=%CD%
cd /D "%~dp0"

::   Relative path of vagrant-ansible-remote to the project
if not defined VAGRANT_ANSIBLE_REMOTE (
  set "VAGRANT_ANSIBLE_REMOTE=vagrant-ansible-remote"
)

::   Vagrant name of the machine with Ansible
if not defined VAGRANT_ANSIBLE_MACHINE (
  set "VAGRANT_ANSIBLE_MACHINE=ansible-vm"
)

::   default relative hosts file, overriden by parameters
if not defined ANSIBLE_ENV (
  set "ANSIBLE_ENV=ANSIBLE_HOSTS_NAME=seafile-vm"
)
if "%ANSIBLE_ENV:ANSIBLE_HOSTS_NAME=%." == "%ANSIBLE_ENV%." (
  set "ANSIBLE_ENV=ANSIBLE_HOSTS_NAME=seafile-vm %ANSIBLE_ENV%"
)

set "VAGRANT_UP_ARGS=--parallel"

call "%VAGRANT_ANSIBLE_REMOTE%/vagrant/ssh-ansible.bat" %*

cd /D "%OLD_CD%"
ENDLOCAL
