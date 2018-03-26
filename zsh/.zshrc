source /usr/share/zsh/share/antigen.zsh

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
antigen theme $HOME/.dotfiles/themes tp-alt.zsh-theme --no-local-clone
antigen theme tp-alt

# Tell antigen that you're done.
antigen apply

# Environment variables
if [ -f /home/sun/.local/share/shell/env.inc ]; then
  source '/home/sun/.local/share/shell/env.inc'
fi

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

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/sun/.node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/sun/.node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/sun/.node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/sun/.node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
