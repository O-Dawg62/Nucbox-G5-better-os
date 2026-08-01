# Base our custom OS on the official stable Bazzite image
FROM ghcr.io/ublue-os/bazzite:stable

# Remove default browsers and inject critical utilities
RUN rpm-ostree override remove firefox \
    && rpm-ostree install -y p7zip git vulkan-tools alsa-utils \
    && rpm-ostree cleanup -a

# Pre-install the native Ship of Harkinian Zelda application package
RUN flatpak install --system -y flathub com.github.HarborMasters.ShipOfHarkinian

# Freeze our custom configuration changes into the final core OS image
RUN ostree container commit
