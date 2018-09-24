# Path to your oh-my-zsh installation.
  export ZSH=/Users/dev/.oh-my-zsh
  export TERM="xterm-256color"

ZSH_THEME="dieter"

DISABLE_AUTO_TITLE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Alias

alias yt='youtube-dl'                       # Youtube-dl alias
alias cp='cp -vf'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ls='ls -FGlhp'                        # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='vim'                            # edit:         Opens any file in vim
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -a'                       # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop
alias pyinstaller='/Library/Frameworks/Python.framework/Versions/3.6/bin/pyinstaller'
alias vim='/usr/local/bin/vim'
alias rc='vim ~/.zshrc'
alias ls='ls -FGlhpa'
alias e='vim'
alias reload='source ~/.zshrc'
alias sha1='/usr/bin/openssl sha1'
alias md5='md5 -r'

# Git Alias

alias ga='git add -A'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias py='python3'
alias gclone='gclone'

function gclone() 
{
	git clone https://github.com/$1
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
