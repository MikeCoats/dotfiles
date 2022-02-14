
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

# Render markdown to html
alias md=~/bin/markdown/Markdown.pl

