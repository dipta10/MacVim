export PATH="$PATH:/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin"

alias vi=vim
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

alias brc='vim ~/.bashrc'
alias src='source ~/.bashrc';
alias submit='~/Dropbox/programming\ diary/submit/'

#submitting solution

test123() {
    echo "hola";
    echo "$1 $2 $3 $4";
    echo "hola";
}

copy() {
    # echo "variables:- 1: $1 2: $2 3: $3";
    # echo "cp -v $1 ~/Dropbox/programming\ diary/submit/$2";
    cp -v $1 ~/Dropbox/programming\ diary/submit/$2;
}

clearsol() {
    rm -v ~/Dropbox/programming\ diary/submit/*;
}

#Compiling C++ files
alias rn='g++ -std=c++14 test.cpp;
          ./a.out'

alias rni='rm -f a.out;
          g++ -std=c++14 test.cpp;
          time ./a.out < input'
#input 1-5
alias rni1='g++ -std=c++14 test.cpp;
          ./a.out < input1'
alias rni2='g++ -std=c++14 test.cpp;
          ./a.out < input2'
alias rni3='g++ -std=c++14 test.cpp;
          ./a.out < input3'
alias rni4='g++ -std=c++14 test.cpp;
          ./a.out < input4'
alias rni5='g++ -std=c++14 test.cpp;
          ./a.out < input5'





alias rns='./test.swift'

alias run='g++ -std=c++14'

alias out='./a.out'


rnf () {
    g++ -std=c++14 $1;
    ./a.out;
} 

alias match='diff myoutput answer'

#Compiling Java Files
alias rnj='javac test.java
           java test';

rnjf () {
    x="$1"
    #echo "${x: : -5}"
    javac $1
    java "${x: : -5}"
} 

alias rnji='javac test.java
           java test < input';

#Compiling Java Files
alias rnp='python3 test.py'
alias rnpi='python3 test.py < input'

#bookmarking directory
alias practice="cd /Users/dipta10/dropbox/practice"
alias programming="cd /Users/dipta10/dropbox/programming\\ diary"
alias algo="cd /Users/dipta10/dropbox/programming\\ diary/algorithm\\ template"
# alias sol="cd /Users/dipta10/dropbox/programming\\ diary/solved\\ problems"
alias tutorial="cd /Users/dipta10/dropbox/programming\\ diary/tutorialProb"
alias codes="cd /Users/dipta10/dropbox/programming\\ diary/code"
alias submit="cd /Users/dipta10/dropbox/programming\\ diary/submit"
alias class="cd /Users/dipta10/dropbox/class"
alias desktop="cd /Users/dipta10/Desktop";
#alias programming="cd  /Users/dipta10/"
