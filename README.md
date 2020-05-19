# Workspace Function
Function to open code workspaces easily.

## Install
1. Store all .code-workspace files in the same directory
2. Put the start-workspace.sh file in that directory
3. Add the script found in bashrc or below to your .bashrc, .bash_profile, .zshrc, etc.
4. Restart terminal session if already running
5. Type "workspace WORKSPACE_NAME_HERE" to open it

## Function
    workspace() {
        cd "$HOME/Repos/workspaces/" && sh "start-workspace.sh" "$1"
    }
