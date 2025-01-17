# Fri Jan 17 06:35:04 PM IST 2025 - desktop

AddPackage foot       # Fast, lightweight, and minimalistic Wayland terminal emulator
AddPackage fuzzel     # Application launcher for wlroots based Wayland compositors
AddPackage hyprland   # a highly customizable dynamic tiling Wayland compositor
AddPackage mako       # Lightweight notification daemon for Wayland
AddPackage noto-fonts # Google Noto TTF fonts
AddPackage waybar     # Highly customizable Wayland bar for Sway and Wlroots based compositors

AddPackage --foreign uwsm # A standalone Wayland session manager

# Fri Jan 17 06:35:04 PM IST 2025 - New / changed files

IgnorePath '/etc/fonts/conf.d/*'
IgnorePath '/etc/systemd/user/pipewire-session-manager.service'
IgnorePath '/etc/systemd/user/pipewire.service.wants/wireplumber.service'
IgnorePath '/etc/systemd/user/sockets.target.wants/pipewire.socket'
IgnorePath '/usr/lib/gdk-pixbuf-2.0/*'
IgnorePath '/usr/lib/gio/*'
IgnorePath '/usr/lib/gtk-3.0/*'
IgnorePath '/usr/share/applications/mimeinfo.cache'
IgnorePath '/usr/share/glib-2.0/*'
IgnorePath '/usr/share/icons/*'
IgnorePath '/usr/share/mime/*'
