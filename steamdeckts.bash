#!/bin/bash
ts=tailscale_1.28.0_amd64
curl https://pkgs.tailscale.com/stable/$ts.tgz > /tmp/tailscale.tgz
tar xf /tmp/tailscale.tgz -C /tmp/
mv /tmp/$ts ~/tailscale

tee << EOF >> ~/tailscale/tailscale-service.desktop
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Terminal=true
Exec=konsole -e sudo ~/tailscale/tailscaled -socket /tmp/tailscaled.sock
EOF

tee << EOF >> ~/tailscale/tailscale-client.desktop
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Terminal=true
Exec=konsole -e sudo ~/tailscale/tailscale -socket /tmp/tailscaled.sock up --operator=$USER
Name=Tailscale Client
EOF