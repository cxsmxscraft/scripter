#!/bin/bash

# shellcheck disable=SC2164
cd "$(dirname "$0")"

# Quick execute
set -e

source ../rcon.sh
source ../telegram.sh
source ../help.sh
source ../backup.sh
source ../upload.sh
source ../upgrade.sh
source ../start.sh


if [[ -z "${1}" ]]; then
    _help
    exit 1
else
    mode="${1}"
    shift 1
fi

case "${mode}" in
    "backup"  ) backup        ;;
    "upload"  ) upload        ;;
    "upgrade" ) upgrade       ;;
    "start"   ) start         ;;
    "help"    ) _help; exit 0 ;;
    *         ) _help; exit 1 ;;
esac