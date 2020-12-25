#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive

# Release the dpkg lock file, if used by another process
pid="$(lsof -t /var/lib/dpkg/lock-frontend 2>/dev/null || true)"
if [ -n "${pid}" ]; then
  echo "another process is using the dpkg lock-file, killing it"
  while kill -0 "${pid}"; do
    sleep 1
  done
fi

echo "update the package list"
apt-get -y update

echo "upgrade all installed packages"
apt-get -y dist-upgrade

reboot
