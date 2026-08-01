#!/usr/bin/env bash
set -ox pipefail

echo "Aligning taskbar to center layout (Windows-Style)..."

mkdir -p /etc/xdg
echo "[Containments][Applets][Configuration][General]" >> /etc/xdg/plasma-org.kde.plasma.desktop-appletsrc
echo "alignment=Center" >> /etc/xdg/plasma-org.kde.plasma.desktop-appletsrc

exit 0
