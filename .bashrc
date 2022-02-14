
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
alias md=~/bin/markdown/Markdown.pl

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

