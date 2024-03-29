# Set HOSTNAME and PS1
PS1="joao $ "

# Keybindings
set -o vi
alias __A=`echo "\020"`     # up arrow = ^p = back a command
alias __B=`echo "\016"`     # down arrow = ^n = down a command
alias __C=`echo "\006"`     # right arrow = ^f = forward a character
alias __D=`echo "\002"`     # left arrow = ^b = back a character
alias __H=`echo "\001"`     # home = ^a = start of line
alias __Y=`echo "\005"`     # end = ^e = end of line

# History
HISTFILE="$HOME/.ksh_history"
HISTSIZE=50000

# Path
PATH="$PATH:$HOME/.local/bin:/usr/ccs/bin:/usr/obsd/bin"
