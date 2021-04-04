. /opt/homebrew/etc/profile.d/z.sh
. /opt/homebrew/opt/asdf/asdf.sh
export GUILE_LOAD_PATH="/opt/homebrew/share/guile/site/3.0"
export GUILE_LOAD_COMPILED_PATH="/opt/homebrew/lib/guile/3.0/site-ccache"
export GUILE_SYSTEM_EXTENSIONS_PATH="/opt/homebrew/lib/guile/3.0/extensions"

export LANG=ja_JP.UTF-8
# alias
alias ls='ls -AFG'
alias ll='ls -hlt'
alias g='git'
alias gst='git status'
alias gl='git pull'
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit -v'
alias gco='git checkout'
alias gb='git branch'
alias ga='git add'
alias gm='git merge'
alias glog='git log --oneline --decorate --color --graph'
alias be='bundle exec'
# auto complete
autoload -Uz compinit vcs_info
compinit
setopt prompt_subst
# colors
export PROMPT="%B%F{green}%n@[%*]%f%b:%B%F{blue}%C%f%b%# "
export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'
# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups
setopt share_history
setopt hist_ignore_space
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
# cd
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
# show git info to RPROMPT
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_}'
[ -f ~/.zsh-z.plugin.zsh ] && source ~/.zsh-z.plugin.zsh
if [ -e /Users/iwark/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/iwark/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
# direnv
export EDITOR=vi
export DIRENV_LOG_FORMAT=
eval "$(direnv hook zsh)"
# go
export GOPATH=/Users/iwark

if (( $+commands[arch] )); then
    alias x64='exec arch -arch x86_64 "$SHELL"'
    alias a64='exec arch -arch arm64e "$SHELL"'
fi
