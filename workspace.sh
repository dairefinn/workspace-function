#!/bin/bash

# Load config file
source ./config.cfg

# Get search argument
SEARCH_ARG=$1

listWorkspaces() {
    # TODO: Different message if no files
    local FILES_LIST=$WORKSPACES_DIR/*
    # $FILE_EXTENSION
    for FILEPATH in $FILES_LIST;
    do
        FILEPATH=${FILEPATH##*/}
        FILEPATH=${FILEPATH%$FILE_EXTENSION}
        echo "   - $FILEPATH"
    done
}

openWorkspace() {
    local FILEPATH=$1

    echo "Opening workspace: $WORKSPACES_DIR/$FILEPATH"
    code $WORKSPACES_DIR/$FILEPATH
}

workspaceNotFound() {
    local FILE=$1

    echo ""
    echo "  Workspace $FILE does not exist"
    echo ""
    echo "  Valid workspaces: "
    echo ""
    listWorkspaces
    echo ""

}

tryOpenWorkspace() {
    # TODO: Check if argument is given
    local FILE=$1

    echo "Checking if workspace $WORKSPACES_DIR/$FILE$FILE_EXTENSION exists"
	if test -f "$WORKSPACES_DIR/$FILE$FILE_EXTENSION";
    then
		openWorkspace $FILE$FILE_EXTENSION
	else
		workspaceNotFound $FILE
	fi
}

tryOpenWorkspace $SEARCH_ARG