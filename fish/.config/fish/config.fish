set -gx PATH "$HOME/.local/bin" $PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/.local/opt/google-cloud-sdk/path.fish.inc" ]; . "$HOME/.local/opt/google-cloud-sdk/path.fish.inc"; end
