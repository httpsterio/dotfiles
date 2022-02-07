# some more ls aliases
# refers to http://superuser.com/questions/650322/ignore-ntuser-dat-files-when-ls-on-git-bash
# --color : On Windows7 this produces permission errors, e.g. for Music folder:
# LS_COMMON="$LS_COMMON --color=auto"
LS_COMMON="-hG"
LS_COMMON="$LS_COMMON --color=auto"
LS_COMMON="$LS_COMMON -I NTUSER.DAT\* -I ntuser.dat\*"
LS_COMMON="$LS_COMMON -I Music\*"
LS_COMMON="$LS_COMMON -I Start\ Menu\*"
LS_COMMON="$LS_COMMON -I Application\ Data\*"
LS_COMMON="$LS_COMMON -I Local\ Settings\*"
LS_COMMON="$LS_COMMON -I Cookies\*"
LS_COMMON="$LS_COMMON -I ntuser.ini"
LS_COMMON="$LS_COMMON -I ntuser.pol"
LS_COMMON="$LS_COMMON -I Thumbs.db"
LS_COMMON="$LS_COMMON -I Favorites\*"
LS_COMMON="$LS_COMMON -I Recent\*"
LS_COMMON="$LS_COMMON -I Searches\*"
alias ls="command ls $LS_COMMON"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Change Directory aliases
alias ch='cd ~'
alias cw='cd ~/projects/'
alias c.='cd ..'
alias c..='cd ../..'

# Edit and source bash-files
alias sbash="source ~/.bashrc"
alias ebash="nano ~/.bashrc"
alias ealias="nano ~/.bash_aliases"

# Git Aliases
alias gl="git log --oneline --all --graph --decorate $*"
alias ga="git add ."
alias gc="git commit -am"
alias gpo="git push origin"
alias gs="git status"

# WSL-specific aliases

alias st="snippingtool.exe"
alias cb="clip.exe <"
alias e.="explorer.exe ."
alias e="explorer.exe"

# Personal functions

alias tpath="thispath"
alias spath="savepath"
alias gpath="gopath"
alias epath="saypath"
alias cfile="copyfile"
alias pfile="pastefile"

alias yd="yle-dl"
alias cpoirot="cd /mnt/e/VIDEOS/Poirot/YLE-POIROT"

# Multiline bug

# save current path to path-file 
thispath () {
    pwd > ~/.pathfile
    echo 'path copied'
}

# save file's path to path-file
savepath () {
    readlink -f $1 > ~/.pathfile
    echo 'path saved'
}

# cd to path-file location
gopath () {
    cd $(cat ~/.pathfile)
}

# echo path-file contents
saypath () {
    cat ~/.pathfile
}

# copy file to .copyfile and windows clipboard
copyfile () {
    cat $1 > ~/.copyfile
    cat $1 | clip.exe
    echo 'file content copied'
}

# paste copy-file contents
pastefile () {
    cat ~/.copyfile
}

# removes zone-idenfitier files in this directory
alias rmzone='find . -name "*:Zone.Identifier" -type f -delete'

alias sshs='ssh sami@192.168.0.10'
alias rm='trash'
