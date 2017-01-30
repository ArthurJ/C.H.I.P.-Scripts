#Color table from: http://www.understudy.net/custom.html
fg_black=%{$'\e[0;30m'%}
fg_red=%{$'\e[0;31m'%}
fg_green=%{$'\e[0;32m'%}
fg_brown=%{$'\e[0;33m'%}
fg_blue=%{$'\e[0;34m'%}
fg_purple=%{$'\e[0;35m'%}
fg_cyan=%{$'\e[0;36m'%}
fg_lgray=%{$'\e[0;37m'%}
fg_dgray=%{$'\e[1;30m'%}
fg_lred=%{$'\e[1;31m'%}
fg_lgreen=%{$'\e[1;32m'%}
fg_yellow=%{$'\e[1;33m'%}
fg_lblue=%{$'\e[1;34m'%}
fg_pink=%{$'\e[1;35m'%}
fg_lcyan=%{$'\e[1;36m'%}
fg_white=%{$'\e[1;37m'%}
#Text Background Colors
bg_red=%{$'\e[0;41m'%}
bg_green=%{$'\e[0;42m'%}
bg_brown=%{$'\e[0;43m'%}
bg_blue=%{$'\e[0;44m'%}
bg_purple=%{$'\e[0;45m'%}
bg_cyan=%{$'\e[0;46m'%}
bg_gray=%{$'\e[0;47m'%}
#Attributes
at_normal=%{$'\e[0m'%}
at_bold=%{$'\e[1m'%}
at_italics=%{$'\e[3m'%}
at_underl=%{$'\e[4m'%}
at_blink=%{$'\e[5m'%}
at_outline=%{$'\e[6m'%}
at_reverse=%{$'\e[7m'%}
at_nondisp=%{$'\e[8m'%}
at_strike=%{$'\e[9m'%}
at_boldoff=%{$'\e[22m'%}
at_italicsoff=%{$'\e[23m'%}
at_underloff=%{$'\e[24m'%}
at_blinkoff=%{$'\e[25m'%}
at_reverseoff=%{$'\e[27m'%}
at_strikeoff=%{$'\e[29m'%}
 
autoload -U colors && colors  
PROMPT="${fg_lgreen}%n${fg_green}@${at_underl}%m${at_underloff}${fg_white}[${fg_cyan}%2d${fg_white}]:${at_normal} "

#PROMPT="${fg_white}
# 45 [${fg_green}%T${fg_white}] ${fg_lgreen}%n@${at_underl}%m${at_underloff}${fg_white}[${fg_cyan}%2d${fg_white}]:${at_normal} "


# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_hist
HISTSIZE=100000
SAVEHIST=100000

setopt appendhistory extendedglob nomatch notify hist_ignore_all_dups interactivecomments

#bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct #_approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' file-sort name
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '+' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=long-list select=5
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' list-prompt %SAt %p: Aperte TAB para mais, ou o caractere à acrescentar%s
# zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/arthur/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

bindkey ';5D' backward-word
bindkey ';5C' forward-word
bindkey '\eOH' beginning-of-line
bindkey '\eOF' end-of-line

alias files='pantheon-files'
alias ccat='pygmentize -g '
alias find='noglob find'
alias sudo='noglob sudo'
alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'       # no spelling correction on cp
alias cd..='cd ..'
alias mkdir='nocorrect mkdir' # no spelling correction on mkdir
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls --color=auto -lah'
alias ls='ls --color'
alias scratch='scratch-text-editor'

if [ -f ~/.bash_env_config ]; then
    . ~/.bash_env_config
fi

#export M2_HOME="/home/arthur/Stuff/apache-maven-3.3.3" 
#export JAVA_HOME="/home/arthur/Stuff/jdk1.8.0_92" 
#export PATH="$JAVA_HOME/bin:$M2_HOME/bin:$PATH" 

setopt inc_append_history
setopt share_history
setopt extended_history

#export PATH="/home/arthur/miniconda3/bin:$PATH"
