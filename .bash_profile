PATH=/opt/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
source ~/.bashrc
#source ~/.vimrc
#source ~/.tmux.conf

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -n "$BASH_VERSION"  ] && [ -f $HOME/.bashrc  ];then
        source $HOME/.bashrc
fi

[ -f "$HOME/.bashrc"  ] && source "$HOME/.bashrc"

alias vi=vim
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias hello='echo hello world'

