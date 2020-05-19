# Workspace Function
Function to open code workspaces easily.

## Install
1. Store all .code-workspace files in the same directory
2. Modify the path in the function below or in bashrc to point to that directory
3. Put the function in  .bashrc, .bash_profile, .zshrc, etc.
4. Restart terminal session if already running
5. Type "workspace WORKSPACE_NAME_HERE" to open it

## Function
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
