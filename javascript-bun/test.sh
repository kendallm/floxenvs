#!/usr/bin/env bash

set -eo pipefail

check_command() {
    if ! command -v $1 2>&1 >/dev/null
    then
        echo "Error: '$1' command could not be found."
        exit 1
    fi
}

check_command bun


bun repl --eval "import figlet from 'figlet'"
echo ">>> figlet package installed"

bun run index.ts
echo ">>> script works"

