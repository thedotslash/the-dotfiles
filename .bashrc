
# Enable date & time history output
HISTTIMEFORMAT="%d-%m-%Y %H:%M:%S "

# Aliases
alias ll='ls -alhF --color=auto'
alias la='ls -A --color=auto'
alias lah='ls -Ah --color=auto'
alias l='ls -CF --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cl='clear'
alias t='tree'

# Oh-my-posh
if [ "$TERM" != "linux" ] && [ "$TERM" != "vt100" ]; then
        eval "$(oh-my-posh init bash --config ~/.poshthemes/thedot.omp.yaml)"
fi
