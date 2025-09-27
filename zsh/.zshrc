# The following lines were added by compinstall
zstyle :compinstall filename '/home/dry/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install



# yazi y function
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

export EDITOR="nvim"
export VISUAL=$EDITOR

# eza integration
alias ls='eza --icons=always -a --group-directories-first'
alias lx='eza --icons=always -a --group-directories-first -l'

# starship integration
eval "$(starship init zsh)"
