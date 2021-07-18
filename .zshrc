# oh-my-zsh theme.
ZSH_THEME="robbyrussell"

# oh-my-zsh plugins.
plugins=(git)

# Load oh-my-zsh.
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# addssh adds a user ssh key to agent.
function addssh() {( set -eo pipefail
	if [ ! -e "${HOME}/.ssh/$1" ]; then
		echo "Error: ${HOME}/.ssh/$1 doesn't exist." >&2
		return 1
	fi

        pass=$(op get item $1 --fields password)
        expect << EOF
	        spawn ssh-add "${HOME}/.ssh/$1"
                expect "Enter passphrase"
                send "$pass\r"
                expect eof
EOF
)}

# gitconfig applies a user customed git config. 
function gitconfig() {( set -eo pipefail
        if [ ! -e "${HOME}/.gitconfigs/$1" ]; then
                echo "Error: ${HOME}/.gitconfigs/$1 doesn't exist." >&2
                return 1
        fi 

	sh  "${HOME}/.gitconfigs/$1"
)}
