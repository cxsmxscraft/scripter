#!/bin/bash

# shellcheck disable=SC2164
cd "$(dirname "$0")"

# Quick execute
set -e

function _install_help {
    echo "usage ${0} [location]"
    echo
    echo "Scripts that installs the main script to given path. " 
}

function install {
    echo "Installing the main script"
    cp ./main.sh "$1/uwuscripter.sh"
    set direction="$(pwd)"
    sed -i 's/CHANGEMEBITCH/$direction/g' "$1/uwuscripter.sh"
    unset direction
}

if [[ -z "${1}" ]]; then
    _install_help
    exit 1
else
    install "${1}"
    exit 0
fi