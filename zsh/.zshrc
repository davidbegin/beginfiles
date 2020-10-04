# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

EDITOR="nvim"

set -o vi

autoload -U colors && colors

# Load aliases and shortcuts if existent.
# [ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# TODO: Figure out a better home for this
[ -f ~/.twitch ] && . ~/.twitch

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Include hidden files in autocomplete:
_comp_options+=(globdots)

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

export KEYTIMEOUT=1

# PS1="%B%{$fg[red]%}%{$fg[yellow]%}%n%{$fg[green]%} %{$fg[magenta]%}%~%{$fg[red]%}%{$reset_color%}$%b "
# export PS1="➜  "
# export PS1="™ "
#export PS1="ⓑ "
# export PS1="ⓑ ™ "
# export PS1="ⓑ™ "
# export PS1="⒝ ™ "
# export PS1="⒝ Ęįģ ƞ"
# export PS1="$fg[cyan]⒝ $fg[red]Ę$fg[yellow]ģ$fg[green]į$fg[magenta]ƞ$reset_color%}%b "
# export PS1="$fg[cyan]⒝ $fg[red]ë$fg[yellow]ģ$fg[green]į$fg[magenta]ƞ$reset_color%}%b "

# export PS1="ϕϕϕ Ѩ "
# export PS1="$fg[cyan]b$fg[red]e$fg[yellow]g$fg[green]i$fg[magenta]n$reset_color%}%b "
# export PS1="\e[36mb\e[33me\e[31mg\e[32mi\e[37mn\e[0m"
# export PS1="➜  "
# export PS1="ϕϕϕ "
# export PS1="$fg[cyan]ⓑ$fg[red]e$fg[yellow]g$fg[green]i$fg[magenta]n$reset_color%}%b "
# export PS1="$fg[cyan]b$fg[red]e$fg[yellow]g$fg[green]i$fg[magenta]n$reset_color%}%b "
# export PS1="> "
export PS1="begin "

# For Nim
export PATH=$PATH:~/.nimble/bin

# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin

# For Rust
export PATH="$HOME/.cargo/bin:$PATH"

# For Go
export PATH="$PATH:$HOME/go/bin"
export PATH=$PATH:/usr/local/go/bin
#
# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# export LUA_PATH="/home/begin/.config/nvim/lua/?.lua"
export LUA_PATH="/home/begin/code/playground/lua/share/lua/5.1/?.lua"
[[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh

export NVIMP="~/.config/nvim"

# This should be moved somewhere else
export DISCO_PROD="disco-server-staging"
export DISCO_STAGE="disco-server-candidate"
export DISCO_DEV="disco-server-dev"

export CHAT_MASTER_PROD="chat-server-go-staging-master"
export CHAT_NODE_PROD="chat-server-go-staging"
export CHAT_MASTER_STAGE="chat-server-candidate-master"
export CHAT_NODE_STAGE="chat-server-go-candidate"

# We don't currently have a Dev Master Chat Service
export CHAT_MASTER_DEV="chat-server-dev"
export CHAT_NODE_DEV="chat-server-dev"

# Make Docker Go Vroom
export DOCKER_BUILDKIT=1

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export GOPRIVATE="github.com"
