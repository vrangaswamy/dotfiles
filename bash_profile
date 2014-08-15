# Setting PATH for Python 3.2
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.2/bin:${PATH}"
export PATH
export ROOT="/"
export SCHOOL='/Users/Vivek/Dropbox/School'
export repo='/Users/Vivek/Dropbox/School/Old/Fall_2013/cs61as'
export a='/Users/Vivek/Dropbox/School/Summer_2014/61as'
export PAGER=cat
export LSCOLORS=Exfxcxdxbxegedabagacad
set -o vi
set -o ignoreeof
set -o noclobber

alias desk='cd $HOME/Desktop'
alias rm='rm -i'
alias drop='cd $HOME/Dropbox'
alias sch='cd $SCHOOL/Summer_2014'
alias stkw='rlwrap -pBlue -c stk-simply'
alias stk='stk-simply'
alias .='cd ..'
alias ls='ls -AGF'
alias dot='cd $HOME/dotfiles'
alias fortune='fortune -a'
alias repo='cd $repo'
alias as='cd $a'
#alias vim='mvim'
alias find_users='for host in quasar nova pulsar torus ; do ssh $host 'who'; done | cut -d" " -f1 | sort -u '
alias py='python3'
alias bin='cd $HOME/bin'
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

# added by Anaconda 1.9.1 installer
#export PATH="/Users/Vivek/anaconda/bin:$PATH"
