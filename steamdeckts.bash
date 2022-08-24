#!/bin/bash
ts=tailscale_1.28.0_amd64
curl https://pkgs.tailscale.com/stable/$ts.tgz > /tmp/tailscale.tgz
tar xf /tmp/tailscale.tgz -C /tmp/
mv /tmp/$ts /tmp/tailscale

tee << EOF >> /tmp/tailscale-service.desktop
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Terminal=true
Exec=gnome-terminal -x /tmp/tailscale/tailscaled -tun userspace-networking -socket /tmp/tailscaled.sock
Name=Tailscale Service
EOF

tee << EOF >> /tmp/tailscale-client.desktop
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Terminal=true
Exec=gnome-terminal -x /tmp/tailscale/tailscale -socket /tmp/tailscaled.sock up
Name=Tailscale Client
EOF
