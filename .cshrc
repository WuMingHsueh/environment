
alias la	   ls -aF
alias lf	   ls -FA
alias ll	   ls -lAF
alias tmux     tmux -2
alias more     less
alias man      'man \!:1 | less'
alias pwgen    pwgen -sy

# A righteous umask
umask 22

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
set PATH = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/bin $HOME/.cargo/bin)

setenv	EDITOR	vi
setenv	PAGER	less
setenv	BLOCKSIZE	K

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set filec
	set history = 1000
	set savehist = 100 
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

endif

setenv LC_CTYPE en_US.ISO8859-1
#setenv LC_ALL zh_TW.Big5
#setenv LANG zh_TW.Big5
setenv LC_ALL en_US.UTF-8
setenv LANG en_US.UTF-8


setenv HOSTNAME `hostname -f`
set prompt = '[%B%n%{^[[1;32m%}@%M%b] %B%~%b%# ' 

#color
setenv LSCOLORS ExGxFxdxCxegedabagExEx
setenv CLICOLOR yes
# autolist
set autolist
set autoexpand
set autocorrect
set recexact

# bind keypad keys for console, vt100, vt102, xterm
bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[2~" overwrite-mode # Ins
bindkey "\e[3~" delete-char # Delete
bindkey "\e[4~" end-of-line # End
bindkey "^P" history-search-backward # CTRL + p = history-search-backward
bindkey "^N" history-search-forward # CTRL + n = history-search-forward

unlimit coredumpsize
