# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
else 
  alias ls='ls --color=auto'
  alias l="ls -lAh"
  alias ll="ls -la"
  alias la="ls -a"
fi

alias psg="ps aux | grep"
alias h="history"
alias sagi="sudo apt-get install"
alias grep='grep --color'


# Aliases / functions leveraging the cb() function
# ------------------------------------------------
function cbf() { cat "$1" | cb; }  			# Copy contents of a file   
alias cbwd="pwd | cb"  					#Copy current working directory
alias cbhs="cat $HISTFILE | tail -n 1 | cb"  		# Copy most recent command in bash history
alias cbssh="cbf ~/.ssh/id_rsa.pub | echo '=> Public key copied to pasteboard.'"   # Copy SSH public key

