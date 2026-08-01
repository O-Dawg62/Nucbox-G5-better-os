#!/usr/bin/env bash
set -ox pipefail

echo "==> Activating Windows Styling Override..."
ln -s /usr/share/plasma/desktoptheme/vinceliuice-win11 /usr/share/plasma/look-and-feel/org.kde.windowstheme
echo "lookandfeel=org.kde.windowstheme" >> /usr/share/config/kdeglobals
echo "Theme=Win11-icons" >> /usr/share/config/kdeglobals

echo "==> Activating Hairy Finger Mouse Protocol..."
mkdir -p /usr/share/icons/default
echo "[Icon Theme]" > /usr/share/icons/default/index.theme
echo "Inherits=HairyFinger" >> /usr/share/icons/default/index.theme
echo "cursorTheme=HairyFinger" >> /usr/share/config/kcminputrc

echo "==> Configuring Taskbar and Autologin Defaults..."
mkdir -p /etc/xdg
cat <<EOF > /etc/xdg/plasma-org.kde.plasma.desktop-appletsrc
[Containments][Applets][Configuration][General]
alignment=Center
EOF
