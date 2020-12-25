#!/bin/sh -eux

# Set up password-less sudo for the vagrant user
echo 'vagrant ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/99_vagrant;
chmod 440 /etc/sudoers.d/99_vagrant;
