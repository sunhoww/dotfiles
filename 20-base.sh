# Fri Jan 17 05:48:47 PM IST 2025 - init

AddPackage base           # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel     # Basic tools to build Arch Linux packages
AddPackage git            # the fast distributed version control system
AddPackage linux          # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux
AddPackage vim            # Vi Improved, a highly configurable, improved version of the vi text editor
AddPackage man-db         # A utility for reading man pages
AddPackage man-pages      # Linux man pages

AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux

CopyFile /boot/loader/entries/arch-fallback.conf 755
CopyFile /boot/loader/entries/arch.conf 755
CopyFile /boot/loader/loader.conf 755
CopyFile /etc/fstab
CopyFile /etc/hostname
CopyFile /etc/locale.conf
CopyFile /etc/locale.gen
CreateLink /etc/localtime /usr/share/zoneinfo/Asia/Kolkata
CopyFile /etc/sudoers.d/wheel 440

# package management
AddPackage reflector      # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
AddPackage pacman-contrib # Contributed scripts and tools for pacman systems

AddPackage --foreign paru          # Feature packed AUR helper
AddPackage --foreign paru-debug    #
AddPackage --foreign paccache-hook # A configurable hook to cleanup the pacman package cache using paccache

CopyFile /etc/pacman.conf
CreateLink /etc/systemd/system/multi-user.target.wants/reflector.service /usr/lib/systemd/system/reflector.service
CopyFile /etc/xdg/reflector/reflector.conf

# snapper
AddPackage snap-pac # Pacman hooks that use snapper to create pre/post btrfs snapshots like openSUSE's YaST
AddPackage snapper  # A tool for managing BTRFS and LVM snapshots. It can create, diff and restore snapshots and provides timelined auto-snapping.

CopyFile /etc/conf.d/snapper
CopyFile /etc/snapper/configs/root 640

# network
CreateLink /etc/resolv.conf ../run/systemd/resolve/stub-resolv.conf
CopyFile /etc/systemd/network/20-ethernet.network
CopyFile /etc/systemd/resolved.conf.d/dns_servers.conf
CopyFile /etc/systemd/resolved.conf.d/mdns.conf
CopyFile /etc/systemd/resolved.conf.d/noresolved.conf
CreateLink /etc/systemd/system/dbus-org.freedesktop.network1.service /usr/lib/systemd/system/systemd-networkd.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.resolve1.service /usr/lib/systemd/system/systemd-resolved.service

# timesync
CreateLink /etc/systemd/system/dbus-org.freedesktop.timesync1.service /usr/lib/systemd/system/systemd-timesyncd.service
CreateLink /etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service /usr/lib/systemd/system/systemd-timesyncd.service
CreateFile /var/lib/systemd/timesync/clock '' systemd-timesync systemd-timesync >/dev/null

SetFileProperty /var/lib/systemd/timesync group systemd-timesync
SetFileProperty /var/lib/systemd/timesync owner systemd-timesync
