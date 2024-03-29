#!/bin/bash
ts=$(curl --silent https://pkgs.tailscale.com/stable/ | grep amd64.tgz | awk '{print $3}' | sed 's/.*">//g;s/<.*//g')
curl https://pkgs.tailscale.com/stable/$ts -o /tmp/tailscale.tgz
echo "Downloading $ts"
tar xfz /tmp/tailscale.tgz -C /tmp/ && mv /tmp/tailscale*amd64/ ~/tailscale

tee << EOF >> ~/Desktop/tailscale-service.desktop
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Exec=konsole -e sudo ~/tailscale/tailscaled -socket ~/tailscale/tailscaled.sock
Name=Tailscale Service
EOF

tee << EOF >> ~/Desktop/tailscale-client.desktop
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Exec=konsole -e sudo ~/tailscale/tailscale -socket ~/tailscale/tailscaled.sock up --operator=$USER
Name=Tailscale Client UP
EOF

tee << EOF >> ~/Desktop/tailscale-client-status.desktop
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Exec=konsole --hold -e sudo ~/tailscale/tailscale -socket ~/tailscale/tailscaled.sock status
Name=Tailscale Client Status
EOF
