# Make sure we're launching in a mode that supports our colour choices.
export TERM=xterm-256color

# Spruce up the default `ls` appearance.
alias ls='ls --classify --color=auto --show-control-chars'

# Long listing and human readable sizes shortcuts.
alias ll='ls -l'
alias lh='ll --human-readable'

# Hidden item and human readable sizes shortcuts.
alias lal='ll --all'
alias lah='lh --all'

# Always use the `pushd` stack for moving about.
alias cd='pushd  > /dev/null'

# Render markdown to html.
alias md=~/vendor/markdown/Markdown.pl

# Common git commands.
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gap='git add --patch'
alias gc='git commit'

# Enable GPG signing from bash.
export GPG_TTY=$(tty)

# Don't log duplicate entries.
HISTCONTROL=ignoredups

# Remember the last 1000 commands this session.
HISTSIZE=1000

# Append those last 1000 commands to the log file.
shopt -s histappend

# Keep up to 10000 lines in the log file.
HISTFILESIZE=10000

# A quick history search shortcut.
alias hg='history | grep'

# Set up some sensibly named colours.
blk="\e[30m"
red="\e[31m"
grn="\e[32m"
brn="\e[33m"
blu="\e[34m"
prp="\e[35m"
cyn="\e[36m"
gry="\e[37m"
clr="\e[0m"

# Get a lower-case version of the host name for the prompt.
hostname=$(hostname)
host=${hostname,,}

# Get a lower-case version of our user name for the prompt.
whoami=$(whoami)
user=${whoami,,}

# Spruce up the command prompt.
export PS1="${cyn}${user}${blu}@${grn}${host}${blu}:${brn}\w ${blu}\$${clr} "
export PS2="${prp}>${clr} "

# Any system-specific configuration can go in a local file and not be
# shared between computers.
if [ -f .bashrc_local ];
then
  . .bashrc_local
fi

