# Setting PATH for Python 3.2
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.2/bin:${PATH}"
export PATH

##
# Your previous /Users/Vivek/.bash_profile file was backed up as /Users/Vivek/.bash_profile.macports-saved_2013-09-01_at_14:01:47
##

# MacPorts Installer addition on 2013-09-01_at_14:01:47: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
alias as='ssh -X cs61as-ra@torus.cs.berkeley.edu'
alias c='ssh -X cs61c-qg@torus.cs.berkeley.edu'
alias desk='cd ~/Desktop'
alias drop='cd ~/Dropbox'
alias sch='cd ~/Dropbox/School/Fall\ 2013'
alias stk='rlwrap stk-simply'
alias .='cd ..'
alias ls='ls -a'
alias dot='cd ~/dotfiles'
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

##
# Your previous /Users/Vivek/.bash_profile file was backed up as /Users/Vivek/.bash_profile.macports-saved_2013-10-20_at_17:37:48
##

# MacPorts Installer addition on 2013-10-20_at_17:37:48: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
