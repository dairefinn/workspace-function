#!/bin/bash

# Arguments
FILE="$1.code-workspace"

# Check if file exists
if test -f "$FILE"; then
	code "$FILE" && exit
else
	echo "$FILE does not exist"
fi