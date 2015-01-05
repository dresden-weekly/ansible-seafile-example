@echo off
:: This script should be placed in the root of your project
SETLOCAL ENABLEEXTENSIONS

::   Absolute path of the project
set "PROJECT_FOLDER=%~dp0"

::   Relative path of vagrant-ansible-remote to the project
set "VAGRANT_ANSIBLE_REMOTE=vagrant-ansible-remote"

::   Vagrant name of the machine with Ansible
if not defined VAGRANT_ANSIBLE_MACHINE (
  set "VAGRANT_ANSIBLE_MACHINE=ansible-vm"
)

::   default relative hosts file, overriden by parameters
::if not defined ANSIBLE_ENV (
::  set "ANSIBLE_ENV=ANSIBLE_HOSTS_NAME=seafile-vm"
::)
::if "%ANSIBLE_ENV:ANSIBLE_HOSTS_NAME=%." == "%ANSIBLE_ENV%." (
::  set "ANSIBLE_ENV=ANSIBLE_HOSTS_NAME=seafile-vm %ANSIBLE_ENV%"
::)

call "%VAGRANT_ANSIBLE_REMOTE%/remote.bat" %*

ENDLOCAL
