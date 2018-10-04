for rc in $HOME/.local/share/shell/*; do
  source $rc
done
unset rc

if [ -d $HOME/.local/share/shell-ig ]; then
  for rc in $HOME/.local/share/shell-ig/*; do
    source $rc
  done
  unset rc
fi


DISABLE_AUTO_UPDATE=true
ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"

if [ ! -f $HOME/.zsh_plugins.sh ]; then
  antibody bundle < $HOME/.zsh_plugins.txt > $HOME/.zsh_plugins.sh
fi

source $HOME/.zsh_plugins.sh
