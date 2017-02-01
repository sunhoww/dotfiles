source ~/.local/share/shell/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle sudo
antigen bundle npm
antigen bundle httpie
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Fish-like auto suggestions
antigen bundle zsh-users/zsh-autosuggestions

# Extra zsh completions
antigen bundle zsh-users/zsh-completions

# Load the theme.
#antigen theme robbyrussell
antigen theme terminalparty-sun

# Tell antigen that you're done.
antigen apply

# Aliases
if [ -f /home/sun/.local/share/shell/alias.inc ]; then
  source '/home/sun/.local/share/shell/alias.inc'
fi

# Paths
if [ -f /home/sun/.local/share/shell/path.inc ]; then
  source '/home/sun/.local/share/shell/path.inc'
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f /home/sun/.local/opt/google-cloud-sdk/path.zsh.inc ]; then
  source '/home/sun/.local/opt/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /home/sun/.local/opt/google-cloud-sdk/completion.zsh.inc ]; then
  source '/home/sun/.local/opt/google-cloud-sdk/completion.zsh.inc'
fi
