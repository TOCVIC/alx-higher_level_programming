#!/bin/bash
# Takes a URL as an argument, sends a request to that URL, and displays the size of the response body in bytes.

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <url>"
    exit 1
fi

curl -sI "$1" | grep -i content-length | awk '{print $2}'
