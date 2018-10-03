for rc in $HOME/.local/share/shell/*; do
  source $rc
done
unset rc

source <(antibody init)
antibody bundle < $HOME/.zsh_plugins.txt
