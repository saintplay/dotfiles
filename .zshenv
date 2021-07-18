# Load private zshenv if exists.
[ -f ~/.zshenv.private ] && source ~/.zshenv.private

# Custom PATH.
export PATH=$HOME/.local/bin:/usr/local/go/bin:/usr/local/bin:usr/local/sbin:$PATH

# Additional Path: Google Cloud.
# source "$HOME/google-cloud-sdk/completion.zsh.inc"
# source "$HOME/google-cloud-sdk/path.zsh.inc"

# Use most as default pager.
export PAGER=most

# Use Vim as shell editor.
export EDITOR=vim

# Tell git to use the current tty for gpg passphrase prompt.
export GPG_TTY=$(tty)

# Disable next telemtry globally.
export NEXT_TELEMETRY_DISABLED=1

# GPG Forwarding intructions that we can use with ssh -R option. Always use absolute paths for these rules.
export GPG_FORWARDING_DEBIAN_1000=/run/user/1000/gnupg/S.gpg-agent:/Users/$USER/.gnupg/S.gpg-agent.extra
export GPG_FORWARDING_DEBIAN_1001=/run/user/1001/gnupg/S.gpg-agent:/Users/$USER/.gnupg/S.gpg-agent.extra

# Shortcut to access quickly to VS Code SSH Extension.
export DEV_VSCODE_URI=vscode-remote://ssh-remote+vscode.$DEVBOX_DOMAIN/home/saintplay
