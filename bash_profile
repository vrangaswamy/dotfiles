# Setting PATH for Python 3.2
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.2/bin:${PATH}"
export PATH


alias as='ssh -X cs61as-ra@torus.cs.berkeley.edu'
alias c='ssh -X cs61c-qg@torus.cs.berkeley.edu'
alias desk='cd ~/Desktop'
alias drop='cd ~/Dropbox'
alias sch='cd ~/Dropbox/School/Fall\ 2013'
alias stk='rlwrap stk-simply'
alias .='cd ..'
alias ls='ls -a'
alias dot='cd ~/dotfiles'
alias haskell='ghci'
function aquamacs
{
 # Create the files as needed -- not as good as raw emacs, but acceptable
     for f in "$@"
     do
  test -e $f || touch $f
     done
     open -a /Applications/Aquamacs.app "$@"
}

export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/Library/Frameworks/Python.framework/Versions/3.2/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin

