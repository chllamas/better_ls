#!/bin/bash

# Check if the first argument is provided
if [ -n "$1" ]; then
    # If provided, use the first argument
    first_arg=$1
else
    # If not provided, use a default string
    first_arg="."
fi

ls -lF --color=always "$first_arg" | grep --color=never '/$'
ls -lF --color=always "$first_arg" | grep --color=never -v '/$' | sed '1d'
