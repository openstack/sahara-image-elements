#!/bin/bash
# dib-lint: disable=executable

if [ "${DIB_DEBUG_TRACE:-0}" -gt 0 ]; then
    set -x
fi
set -eu
set -o pipefail

DISTRO="$(lsb_release -is)"

case "$DISTRO" in
    Ubuntu )
        sudo service mysql start
        ;;
    Fedora | CentOS | RedHatEnterpriseServer )
        sudo service mysqld start
        ;;
esac
