# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="qinix"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Change this value to set how frequently ZSH updates¬
export UPDATE_ZSH_DAYS=5

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=()

source $ZSH/oh-my-zsh.sh

export SYSTEM_TYPE=$(uname -s)
# Customize to your needs...
# export LANG=zh_CN.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export HTTP_PROXY=http://q.gfw.li:37979/
alias grep="grep --color=auto"
alias ll="ls -lh"
alias la="ls -a"

export GOPATH=/Volumes/HDD/go
export PATH=$HOME/bin:$GOPATH/bin:$PATH:$HOME/.rvm/bin:/usr/local/sbin

if [ "$SYSTEM_TYPE" = "Darwin" ]; then
    alias ls="ls -FG"
else
    alias ls="ls --color"
fi

PROMPT='%{$fg_bold[cyan]%}%~%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} -> %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} x%{$fg[blue]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}]"
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
