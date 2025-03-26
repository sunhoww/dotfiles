# Sat Jan 18 01:36:34 AM IST 2025 - gaming

AddPackage lib32-systemd # system and service manager (32-bit)
AddPackage steam         # Valve's digital software delivery system

IgnorePath '/usr/lib/gtk-4.0/*'
IgnorePath '/usr/lib/gconv/gconv-modules.cache'
IgnorePath '/usr/lib32/gconv/gconv-modules.cache'

CopyFile /etc/sysctl.d/80-gamecompatibility.conf
