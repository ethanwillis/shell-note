#!/bin/bash

# Create a note file for the current day if it doesn't exist.
function note() {
	local CURRENTDATE=$(date -u +"%Y-%m-%d")
	if [ ! -f $CURRENTDATE ]
	then
		touch ./$CURRENTDATE
	fi
}

# Create aliases
## Open the note for the current day
alias open-note="vim $(date -u +\"%Y-%m-%d\")"

