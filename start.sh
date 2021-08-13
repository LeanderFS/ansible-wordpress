#!/usr/bin/env sh

hash ansible ansible-galaxy ansible-playbook &>/dev/null &&
    echo "All programs installed" ||
    echo "At least one program is missing"

# Install ansible roles
ansible-galaxy install -r requirements.yml -p roles

ansible-playbook "$@"
