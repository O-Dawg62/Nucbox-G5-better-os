# Base our custom OS on the official stable Bazzite image
FROM ghcr.io/ublue-os/bazzite:stable

# Install required tools and ensure the system is cleanly configured
RUN rpm-ostree install -y p7zip git vulkan-tools alsa-utils \
    && rpm-ostree cleanup -a

# Freeze our custom configuration changes into the final core OS image
RUN ostree container commit
