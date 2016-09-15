# Path to your oh-my-zsh installation.
export ZSH=/Users/Vivek/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="default"
#ZSH_THEME="agnoster" # (this is one of the fancy ones)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/Users/Vivek/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/Vivek/Library/Haskell/bin:/usr/texbin:/usr/local/bin:/usr/local/sbin:/Applications/Racket v6.2.1/bin:/Users/Vivek/scala/bin:/Applications/MATLAB_R2014b.app/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#export LSCOLORS=Exfxcxdxbxegedabagacad
set -o vi
set -o ignoreeof
set -o noclobber

alias rm='rm -i'

alias mv='mv -i'
#alias ls='ls -G'

alias fortune='fortune -a'
alias stkw='rlwrap -pBlue -c stk-simply'
alias stk='stkw'
alias vim='mvim'


alias desk='cd $HOME/Desktop'
alias bin='cd $HOME/bin'
alias sch='cd $SCHOOL/Spring_2016'
alias repo='cd $REPO'

alias gc='git commit'
alias gco='git checkout'
alias gs='git branch; git status'
alias ezsh='\vim ~/.zshrc && source ~/.zshrc'

#export PROMPT="[%d] "
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/Library/Haskell/bin
export PATH=$PATH:/usr/texbin

export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin


# added by Anaconda 1.9.1 installer
export PATH=/Users/Vivek/anaconda2/bin:$PATH
export PYTHONSTARTUP=~/.pythonstartup

export PATH=$PATH:/Applications/Racket\ v6.2.1/bin
export PATH=$PATH:$HOME/scala/bin

function repeated_char {
if [ $2 -eq 0 ]
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


#u's
for i in {1..9}
do
  num=`repeated_char u $i`
  alias $num="repeated_cd $i"
done

