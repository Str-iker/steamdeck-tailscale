# Steam Deck Tailscale Installer

A crude method to install tailscale binaries to your steamdeck homedir. It's not pretty but it works. I figured I'd share it with the community.

## Prep Work

==Switch to Desktop Mode==

You need at least a password setup for your deck user. (If you haven't already)

Launch Konsole and enter
```bash
passwd
```

## Installation

  1. [Download the installer](https://raw.githubusercontent.com/Str-iker/steamdeck-tailscale/main/install-tailscale.desktop)

  2. Launch the installer

  <a href="https://ibb.co/1RmyL49"><img src="https://i.ibb.co/SV3YPZK/Screenshot-20220827-015756.png" alt="Screenshot-20220827-015756" border="0"></a>

  3. Execute Tailscale Service on your desktop and minimize the window

  4. Execute Tailscale Client UP on your desktop. Upon first run you will be shown a link, copy and paste it into your web browser and authenticate to tailscale. The window will automatically close after.

  5. When you want to disconnect tailscale execute the Tailscale Client Down.

  6. To kill the service completely, close the service Terminal window

## Things to Know
To get a list of node IPs and their status, execute the Tailscale Client Status icon.

To update the version of tailscale, re-execute the installer

## Extras
If you wish you can control Tailscale via the CLI by using the binaries under ~/tailscale/  
you will have to specify the custom sock path ~/tailscale/tailscaled.sock
```bash
sudo ~/tailscale/tailscale --sock ~/tailscale/tailscaled.sock <cmd>
```
## Shoutouts
Thanks to /u/xXxGerMxXx of /r/steamdeck for helping me test when I didn't have a deck to test with.
