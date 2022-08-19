#!/bin/bash

# shellcheck disable=SC2164
cd "$(dirname "$0")"

# Quick execute
set -e

source CHANGEMEBITCH/rcon.sh
source CHANGEMEBITCH/telegram.sh
source CHANGEMEBITCH/help.sh
source CHANGEMEBITCH/backup.sh
source CHANGEMEBITCH/upload.sh
source CHANGEMEBITCH/start.sh


if [[ -z "${1}" ]]; then
    _help
    exit 1
else
    mode="${1}"
    shift 1
fi

case "${mode}" in
    "backup") backup        ;;
    "upload") upload        ;;
    "start" ) start         ;;
    "help"  ) _help; exit 0 ;;
    *       ) _help; exit 1 ;;
esac