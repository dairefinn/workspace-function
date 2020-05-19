workspace() {
	# Arguments
	WORKSPACES="$HOME/Repos/Workspaces"

	# Check if file exists
	if test -f "$WORKSPACES/$1.code-workspace"; then
		code "$WORKSPACES/$1.code-workspace"
	else
		echo "workspace $1 does not exist"
	fi
}