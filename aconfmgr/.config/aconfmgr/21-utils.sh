# Fri Jan 17 07:22:24 PM IST 2025 - utils

AddPackage unzip       # For extracting and viewing files in .zip archives
AddPackage wget        # Network utility to retrieve files from the Web
AddPackage pass        # Stores, retrieves, generates, and synchronizes passwords securely
AddPackage fuse2       # Interface for userspace programs to export a filesystem to the Linux kernel
AddPackage imagemagick # An image viewing/manipulation program
AddPackage sshfs       # FUSE client based on the SSH File Transfer Protocol

# pipewire
AddPackage pipewire-alsa  # Low-latency audio/video router and processor - ALSA configuration
AddPackage pipewire-pulse # Low-latency audio/video router and processor - PulseAudio replacement

IgnorePath '/etc/systemd/user/sockets.target.wants/pipewire-pulse.socket'

# bluetooth
AddPackage bluez       # Daemons for the bluetooth protocol stack
AddPackage bluez-utils # Development and debugging utilities for the bluetooth protocol stack

CreateLink /etc/systemd/system/bluetooth.target.wants/bluetooth.service /usr/lib/systemd/system/bluetooth.service

IgnorePath '/etc/systemd/system/dbus-org.bluez.service'
IgnorePath '/var/lib/bluetooth'
IgnorePath '/var/lib/bluetooth/*'
IgnorePath '/var/lib/upower/*'

# monitoring
AddPackage btop  # A monitor of system resources, bpytop ported to C++
AddPackage iftop # Display bandwidth usage on an interface
AddPackage iotop # View I/O usage of processes
AddPackage nvtop # GPUs process monitoring for AMD, Intel and NVIDIA
AddPackage duf   # Disk Usage/Free Utility

# ups
AddPackage bc  # An arbitrary precision calculator language
AddPackage nut # A collection of programs which provide a common interface for monitoring and administering UPS, PDU and SCD hardware

CopyFile /etc/nut/nut.conf
CopyFile /etc/nut/upsmon.conf 640 '' nut
CopyFile /etc/systemd/system/nut-monitor.service
CopyFile /etc/systemd/system/nut.target
IgnorePath '/var/lib/nut/upssched'
IgnorePath '/etc/nut/upsd.conf'
IgnorePath '/etc/nut/upsd.users'
IgnorePath '/var/lib/nut'

# Sun Jan 19 10:57:56 PM IST 2025 - transmission

AddPackage transmission-cli # Fast, easy, and free BitTorrent client (CLI tools, daemon and web client)

IgnorePath '/var/lib/transmission'

# Sun Jan 26 01:28:07 AM IST 2025 - openvpn

AddPackage openvpn                                   # An easy-to-use, robust and highly configurable VPN (Virtual Private Network)
AddPackage --foreign openvpn-update-systemd-resolved # OpenVPN systemd-resolved Updater

IgnorePath '/etc/openvpn/client'
IgnorePath '/etc/openvpn/server'

# Tue Jan 28 09:33:41 PM IST 2025 - restic backup server

CopyFile /etc/systemd/system/restic-server.service
CopyFile /etc/systemd/system/restic-server.timer
CreateLink /etc/systemd/system/timers.target.wants/restic-server.timer /etc/systemd/system/restic-server.timer

# Tue Feb 11 12:39:35 PM IST 2025 - tailscale

AddPackage tailscale # A mesh VPN that makes it easy to connect your devices, wherever they are.

IgnorePath '/var/lib/tailscale'
CreateLink /etc/systemd/system/multi-user.target.wants/tailscaled.service /usr/lib/systemd/system/tailscaled.service

# Tue Feb 11 12:46:06 PM IST 2025 - openssh

AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer

IgnorePath '/etc/ssh/*_key'
IgnorePath '/etc/ssh/*_key.pub'
CopyFile /etc/ssh/sshd_config.d/20-deny-root.conf
CopyFile /etc/ssh/sshd_config.d/20-force_publickey_auth.conf
CreateLink /etc/systemd/system/multi-user.target.wants/sshd.service /usr/lib/systemd/system/sshd.service

# Fri May 23 12:13:38 AM IST 2025 - downgrade

AddPackage --foreign downgrade # Bash script for downgrading one or more packages to a version in your cache or the A.L.A.
