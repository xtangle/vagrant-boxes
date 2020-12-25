#!/bin/bash -eux

# Vagrant (as of v2.2.14) does not recognize Pop!_OS as a Linux type OS out of the box.
# This is a hack to bypass this
sed -i 's/Pop!_OS/Pop!_OS Linux/' /etc/issue

# Set default shell to /bin/bash
chsh --shell /bin/bash vagrant
