# Fri Jan 17 07:22:24 PM IST 2025 - utils

AddPackage unzip # For extracting and viewing files in .zip archives
AddPackage wget  # Network utility to retrieve files from the Web
AddPackage pass  # Stores, retrieves, generates, and synchronizes passwords securely
AddPackage fuse2 # Interface for userspace programs to export a filesystem to the Linux kernel

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
