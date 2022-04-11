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
# Use tput output rather than the ansi codes directly for portability.
blk="$(tput setaf 0)"
red="$(tput setaf 1)"
grn="$(tput setaf 2)"
brn="$(tput setaf 3)"
blu="$(tput setaf 4)"
prp="$(tput setaf 5)"
cyn="$(tput setaf 6)"
gry="$(tput setaf 7)"
clr="$(tput sgr0)"

# Get a lower-case version of the host name for the prompt.
hostname=$(hostname)
host=${hostname,,}

# Get a lower-case version of our user name for the prompt.
whoami=$(whoami)
user=${whoami,,}

# Spruce up the command prompt.
# All non-printable characters need to be wrapped in \[ and \] to stop bash from
# including them in the character count and line-wrapping too early.
export PS1="\[${cyn}\]${user}\[${blu}\]@\[${grn}\]${host}\[${blu}\]:\[${brn}\]\w \[${blu}\]\$\[${clr}\] "
export PS2="\[${prp}\]>\[${clr}\] "

# After every command update the drawable window size in case we've resized our
# terminal window.
shopt -s checkwinsize

# Any system-specific configuration can go in a local file and not be
# shared between computers.
if [ -f .bashrc_local ];
then
  . .bashrc_local
fi

