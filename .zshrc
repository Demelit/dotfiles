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
export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'

case "${OSTYPE}" in
    freebsd*|darwin*)
        alias ls="ls -GF"
        ;;
    linux*)
        alias ls="ls -F --color"
        ;;
esac

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

# alias conf

alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
alias gs='git status'
alias es='emacs'
alias esz='emacs .zshrc'
alias rc='.zshrc'
alias ctpro='cd c_lang/tprogress/'
alias chome='cd /cygdrive/c/Users/15t269/Documents/'
alias cclan='cd /cygdrive/c/Users/15t269/Documents/SLP/C_lang/'
alias cpex='cd /cygdrive/c/Users/15t269/Documents/programming/'
