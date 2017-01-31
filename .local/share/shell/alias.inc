alias irk='sudo netctl start irkalla'
alias unirk='sudo netctl stop irkalla'
alias start-printer='sudo systemctl start orgs.cups.cupsd.service'
alias stop-printer='sudo systemctl stop orgs.cups.cupsd.service'

function ve () {
  if [ -z "$1" ]; then
    echo "Usage: ve <environment>"
  elif [ ! -d "$HOME/.local/lib/pyve/$1" ]; then
    echo "Virtual environment $1 not found"
    echo "Do you create it? [yN] : \c"
    read input
    if [ "$input" = "Y" -o "$input" = "y" ]; then
      virtualenv2 $HOME/.local/lib/pyve/$1
    else
      echo "  Fine. Have it your way."
    fi
  else
    source $HOME/.local/lib/pyve/$1/bin/activate
  fi
}

