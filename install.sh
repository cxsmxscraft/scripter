#!/bin/bash

# shellcheck disable=SC2164
cd "$(dirname "$0")"

# Quick execute
set -e

function _help {
    echo "usage ${0} [location]"
    echo
    echo "Scripts that installs the main script to given path. " 
}

function install {
    echo "Installing the main script"
    cp ./main.sh "$1"
}

if [[ -z "${1}" ]]; then
    _help
    exit 1
else
    install "${1}"
    exit 0
fi