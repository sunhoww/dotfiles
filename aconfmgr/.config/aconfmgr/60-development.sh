# Fri Jan 17 07:18:06 PM IST 2025 - development

AddPackage fish                 # Smart and user friendly shell intended mostly for interactive use
AddPackage neovim               # Fork of Vim aiming to improve user experience, plugins, and GUIs
AddPackage starship             # The cross-shell prompt for astronauts
AddPackage ttc-iosevka          # Typeface family designed for coding, terminal use and technical documents.
AddPackage ttf-iosevkaterm-nerd # Patched font Iosevka Term from nerd fonts library
AddPackage zed                  # A high-performance, multiplayer code editor from the creators of Atom and Tree-sitter

AddPackage --foreign visual-studio-code-bin # Visual Studio Code (vscode): Editor for building and debugging modern web and cloud applications (official binary version)

# fzf
AddPackage fzf # Command-line fuzzy finder

IgnorePath '/usr/share/vim/vimfiles/doc/tags'

AddPackage fd      # Simple, fast and user-friendly alternative to find
AddPackage lazygit # Simple terminal UI for git commands
AddPackage ripgrep # A search tool that combines the usability of ag with the raw speed of grep

AddPackage mkcert # Simple tool for making locally-trusted development certificates

# Sun Jan 19 06:07:20 PM IST 2025 - docker

AddPackage docker         # Pack, ship and run any application as a lightweight container
AddPackage docker-buildx  # Docker CLI plugin for extended build capabilities with BuildKit
AddPackage docker-compose # Fast, isolated development environments using Docker

IgnorePath '/etc/cni'
IgnorePath '/opt/containerd'
IgnorePath '/var/lib/containerd'

CopyFile /etc/docker/daemon.json
CreateLink /etc/systemd/system/multi-user.target.wants/docker.service /usr/lib/systemd/system/docker.service

# Thu Feb 20 01:07:04 PM IST 2025 - nodejs

AddPackage nodejs # Evented I/O for V8 javascript ("Current" release)

# Thu Mar  6 11:48:18 AM IST 2025 - gh

AddPackage github-cli # The GitHub CLI

# Thu Mar 27 08:06:44 AM IST 2025 - z

AddPackage zoxide # A smarter cd command for your terminal

# Wed Apr 23 01:26:59 PM IST 2025 - python

AddPackage uv # An extremely fast Python package installer and resolver written in Rust
