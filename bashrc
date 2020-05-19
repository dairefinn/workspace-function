# Start workspaces
workspace() {
	cd "$HOME/Repos/workspaces/" && (
		# Arguments
		WORKSPACES="$HOME/Repos/workspaces"

		# Check if file exists
		if test -f "$WORKSPACES/$1.code-workspace"; then
			code "$WORKSPACES/$1.code-workspace" && exit
		else
			echo "workspace $1 does not exist"
		fi
	)
}