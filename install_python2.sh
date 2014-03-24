#!/usr/bin/env bash
ansible \
  all -i 'provisioning/inventory' \
  -m raw -a 'pacman -Sy --noconfirm python2' \
  --user=vagrant --private-key="${HOME}/.vagrant.d/insecure_private_key" --sudo
