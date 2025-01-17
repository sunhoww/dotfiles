# Fri Jan 17 07:22:24 PM IST 2025 - utils

AddPackage unzip          # For extracting and viewing files in .zip archives
AddPackage wget           # Network utility to retrieve files from the Web
AddPackage pipewire-alsa  # Low-latency audio/video router and processor - ALSA configuration
AddPackage pipewire-pulse # Low-latency audio/video router and processor - PulseAudio replacement

CreateLink /etc/systemd/user/sockets.target.wants/pipewire-pulse.socket /usr/lib/systemd/user/pipewire-pulse.socket
