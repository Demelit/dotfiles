################################################
##
## zsh config
## Takeru SHIMIZU
## Sep 14, 2015
##
################################################

#プロンプト表示設定
setopt prompt_subst

#色をつける
autoload colors
colors

# 右側にホスト名を表示
RPROMPT="%B%(?.%{$fg_bold[blue]%}.%{$fg_bold[white]$bg[red]%})[${HOST}]%{$reset_color%}"

# もしかして？
setopt correct

# Zshをかわいくする
SPROMPT="%{$fg[magenta]%}Do you mean? %B%{${fg[cyan]}%}%r%b%{$fg[magenta]%} ? [Yes(y),No(n),a,e]:%{${reset_color}"

# 左側にカレントディレクトリを表示する
PROMPT="
%{$fg_bold[cyan]%}%d$reset_color%}
%(?.%{$fg_bold[green]%}.%{${fg_bold[red]}%})[%n] ------>> "

PROMPT2='[%n]> '

# 自動補完を有効に
autoload -U compinit; compinit

# lsに色を付けます
#export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
#export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
#zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'

#case "${OSTYPE}" in
#    freebsd*|darwin*)
#        alias ls="ls -GF"
#        ;;
#    linux*)
#        alias ls="ls -F --color"
#        ;;
#esac

#lsに色をつける part2

autoload -U compinit
compinit

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -GF"
alias gls="gls --color"

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# google で検索できる
#function google() {
#    local str opt
#    if [ $# != 0 ]; then
#        for i in $*; do
#            str="$str+$i"
#        done
#        str=`echo $str | sed 's/^\+//'`
#        opt='search?num=50&hl=ja&lr=lang_ja'
#        opt="${opt}&q=${str}"
#    fi
#    w3m http://www.google.co.jp/$opt
#        
#}


# cs to cd, then ls!
cs () {
\cd "$@" && ls
}

# alias conf

alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'

alias gs='git status'
alias es='emacs'
alias esz='emacs .zshrc'
alias soz='source .zshrc'
alias rc='.zshrc'
alias utf='chcp 65001'
alias sjis='chcp 932'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c.='cs ..'
alias c..='cs ../..'
alias c...='cs ../../..'

alias ctpro='cd && cd c_lang/tprogress/'
alias chome='cd && cd /cygdrive/c/Users/15t269/Documents/'
alias cclan='cd && cd /cygdrive/c/Users/15t269/Documents/SLP/C_lang/'
alias cprog='cd  && cd /cygdrive/c/Users/15t269/Documents/programming/2016/'
alias cdotf='cd && cd dotfiles/'

alias cctpro='cd && cs c_lang/tprogress/'
alias cchome='cd && cs /cygdrive/c/Users/15t269/Documents/'
alias ccclan='cd && cs /cygdrive/c/Users/15t269/Documents/SLP/C_lang/'
alias ccprog='cd  && cs /cygdrive/c/Users/15t269/Documents/programming/2016/'

##alias sshpo='ssh -D 1080 -l {USER} poulenc.eng.kagawa-u.ac.jp'
sshpo () {
\ssh -D 1080 -l "$@" poulenc.eng.kagawa-u.ac.jp
}

##alias sshpo='ssh -l {USER} boulez2'
sshbo2 () {
\ssh -l "$@" boulez2
}
