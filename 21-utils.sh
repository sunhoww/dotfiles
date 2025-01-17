# Fri Jan 17 07:22:24 PM IST 2025 - utils

AddPackage unzip # For extracting and viewing files in .zip archives
AddPackage wget  # Network utility to retrieve files from the Web

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
