
parse_git_branch() {
		git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# set ps1 prompt + colors
export PS1='\[\033[1;36m\]\u\[\033[1;31m\] \[\033[1;35m\]\w \[\033[1;33m\]$(parse_git_branch)\[\033[1;31m\]\$\[\033[0m\] '

export PATH=~/bin:"$PATH"

eval "$(fzf --bash)"

. ~/bash/bash-aliases
. ~/bin/zen/zen-quote.sh
. ~/.local-extensions
