
alias la="ls -aF"
alias lf="ls -FA"
alias ll="ls -lAF"
alias tmux="tmux -2"
alias more="less"
alias pwgen="pwgen -sy"

umask 22

PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin; export PATH
BLOCKSIZE=K;	export BLOCKSIZE

# Setting TERM is normally done through /etc/ttys.  Do only override
# if you're sure that you'll never log in via telnet or xterm or a
# serial line.
# TERM=xterm; 	export TERM

EDITOR=vi;   	export EDITOR
PAGER=less;  	export PAGER

# set ENV to a file invoked each time sh is started for interactive use.
ENV=$HOME/.shrc; export ENV


export LC_CTYPE=en_US.ISO8859-1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export HOSTNAME=`hostname -f`

export PS1="[\u\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]] -> "