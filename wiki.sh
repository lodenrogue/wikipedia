#! /bin/bash

if [[ -z "$(elinks --version)" ]]; then
    echo "elinks not found. Install elinks to use this service"
    exit 1
fi

query="$1"

elinks "https://en.wikipedia.org/w/index.php?title=Special:Search&search=$query&go=Go"
