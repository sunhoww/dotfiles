# Fri Jan 17 06:35:04 PM IST 2025 - desktop

AddPackage foot       # Fast, lightweight, and minimalistic Wayland terminal emulator
AddPackage fuzzel     # Application launcher for wlroots based Wayland compositors
AddPackage hyprland   # a highly customizable dynamic tiling Wayland compositor
AddPackage mako       # Lightweight notification daemon for Wayland
AddPackage noto-fonts # Google Noto TTF fonts
AddPackage waybar     # Highly customizable Wayland bar for Sway and Wlroots based compositors
AddPackage uwsm       # A standalone Wayland session manager

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

AddPackage xdg-user-dirs # Manage user directories like ~/Desktop and ~/Music

IgnorePath '/etc/systemd/user/default.target.wants/xdg-user-dirs-update.service'

# Fri Jan 17 10:23:33 PM IST 2025 - hyprland utils

AddPackage bat                         # Cat clone with syntax highlighting and git integration
AddPackage cliphist                    # wayland clipboard manager
AddPackage hyprpolkitagent             # Simple polkit authentication agent for Hyprland, written in QT/QML
AddPackage xdg-desktop-portal-gtk      # A backend implementation for xdg-desktop-portal using GTK
AddPackage xdg-desktop-portal-hyprland # xdg-desktop-portal backend for hyprland
AddPackage yazi                        # Blazing fast terminal file manager written in Rust, based on async I/O
