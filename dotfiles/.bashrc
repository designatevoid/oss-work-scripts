# Doesn't work with iTerm2 any more as of Dec 2019
#function title {
#    echo -ne "\033]0;"$*"\007"
#}
set -o vi
set -uo pipefail

# unbound variable in iterm2
# see https://iterm2.com/shell_integration/bash
#export __bp_enable_subshells=true

__prompt_command() {
    local EXIT="$?"             # This needs to be first
    PS1=""

    local RCol='\[\e[0m\]'

    local Red='\[\e[0;31m\]'
    local Gre='\[\e[0;32m\]'
    local BYel='\[\e[1;33m\]'
    local BBlu='\[\e[1;34m\]'
    local Pur='\[\e[0;35m\]'

    if [ $EXIT != 0 ]; then
        PS1+="${Red}[$EXIT] \u${RCol}"      # Add red if exit code non 0
    else
        PS1+="${Gre}[$EXIT] \u${RCol}"
    fi

    PS1+="${RCol}@${BBlu}\h ${Pur}$PWD${BYel}\n$ ${RCol}"
}
PROMPT_COMMAND=__prompt_command # Func to gen PS1 after CMDs
