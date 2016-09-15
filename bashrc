# Setting PATH for Python 3.2
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.2/bin:${PATH}"
export PATH
export ROOT="/"
export SCHOOL='/Users/Vivek/Dropbox/School'
export REPO='/Users/Vivek/Documents/61as/core'
export A='/Users/Vivek/Dropbox/61as/fa14'
export LSCOLORS=Exfxcxdxbxegedabagacad
set -o vi
set -o ignoreeof
set -o noclobber

alias desk='cd $HOME/Desktop'
alias rm='rm -i'
alias drop='cd $HOME/Dropbox'
alias sch='cd $SCHOOL/Fall_2015'
alias stkw='rlwrap -pBlue -c stk-simply'
alias stk='stk-simply'
alias .='cd ..'
alias ..='cd ../..'
alias ls='ls -AG'
alias dot='cd $HOME/dotfiles'
alias fortune='fortune -a'
alias repo='cd $REPO'
alias as='cd $A'
alias py='python3'
alias bin='cd $HOME/bin'
alias vim='mvim'
alias gc='git commit'
alias gco='git checkout'
alias stk='rlwrap stk-simply'
PS1='[$PWD] '

function aquamacs
{
 # Create the files as needed -- not as good as raw emacs, but acceptable
     for f in "$@"
     do
  test -e $f || touch $f
     done
     open -a /Applications/Aquamacs.app "$@"
}


#export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/bin
export PATH=$HOME/Library/Haskell/bin:$PATH
export PATH=/usr/texbin:$PATH

# added by Anaconda 1.9.1 installer
#export PATH="/Users/Vivek/anaconda/bin:$PATH"
export PYTHONSTARTUP=~/.pythonstartup
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=~/Downloads/scala-2.11.6/bin:$PATH
#export PATH=/Applications/Julia-0.2.1.app/Contents/Resources/julia/bin/:$PATH

#us
#alias u='cd .. && ls'
#alias uu='cd ../.. && ls'
#alias uuu='cd ../../.. && ls'
#alias uuuu='cd ../../../.. && ls'
#alias uuuuu='cd ../../../../.. && ls'

#export PATH=/path/to/dir:$PATH


# Added by Canopy installer on 2015-01-27
# VIRTUAL_ENV_DISABLE_PROMPT can be set to '' to make bashprompt show that Canopy is active, otherwise 1
# VIRTUAL_ENV_DISABLE_PROMPT=1 source /Users/Vivek/Library/Enthought/Canopy_64bit/User/bin/activate

alias gs='git branch; git status'
alias ezsh='vim ~/.bashrc; source ~/.bashrc'
export PATH=$PATH:/Applications/Racket\ v6.2.1/bin
export PATH=$PATH:/Users/Vivek/Downloads/scala-2.11.7/bin
function repeated_char {
if [ $2 == 0 ]
then
  return
fi
result=""
for i in `seq 1 $2`
do
  result="$1$result"
done
echo $result
}


function repeated_cd {
num=$1
i=0
while [ $i -lt $num ]
do
  cd ..
  i=$[$i+1]
done
}

for i in {1..9}
do
  num=`repeated_char u $i`
  alias $num="repeated_cd $i"
done
