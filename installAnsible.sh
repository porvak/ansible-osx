#!/usr/bin/env bash
#
# Install the latest version of ansible via git

mkdir -p $HOME/opt

# TODO: Check if the repo is already checked out, offer a flag to decide wether or not to update
cd $HOME/opt
git clone git://github.com/ansible/ansible.git

# Install the minium necessary pip packages to run ansible
sudo pip install paramiko PyYAML jinja2 httplib2 MarkupSafe

# Print next steps
echo "To run ansible, goto $HOME/opt/ansible and run source ./hacking/env-setup"
