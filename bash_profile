# Setting PATH for Python 3.2
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.2/bin:${PATH}"
export PATH
export ROOT="/"
export PAGER=cat

alias desk='cd $HOME/Desktop'
alias drop='cd $HOME/Dropbox'
alias sch='cd $HOME/Dropbox/School/Spring\ 2014'
alias stk='rlwrap -pBlue -c stk-simply'
alias .='cd ..'
alias ls='ls -AF'
alias dot='cd $HOME/dotfiles'
alias c='ssh -X cs70-cd@star.cs.berkeley.edu'
alias as='ssh -X cs61as-lh@star.cs.berkeley.edu'
alias 9e='ssh -X cs9e-1bu@cory.cs.berkeley.edu'

function aquamacs
{
 # Create the files as needed -- not as good as raw emacs, but acceptable
     for f in "$@"
     do
  test -e $f || touch $f
     done
     open -a /Applications/Aquamacs.app "$@"
}


echo export PATH='/usr/local/sbin:$PATH' >> ~/.bash_profile
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/sbin:$PATH
