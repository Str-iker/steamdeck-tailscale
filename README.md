# steamdeck-tailscale
Probably want to do this in Desktop MODE then use Game mode after adding the shortcuts in steam.

Anyway, the idea is to curl this bash script from your terminal (Konsole), it will download latest Tailscale and set it up in ~/ (/home/deck).

You WILL NEED:
A web browser installed. To auth to tailscale.

Step1:
Open a terminal and run the following:
curl -s https://raw.githubusercontent.com/Str-iker/steamdeck-tailscale/main/steamdeckts.bash | bash

Step 2:
YOU will need to add the 2 desktop files to steam via the "Add a Non-Steam game option" path is under ~/tailscale/ not /tmp/ as per the screenshot which I have to retake :P

<a href="https://imgbb.com/"><img src="https://i.ibb.co/Pj0RTtn/non-steam-tmp.png" alt="non-steam-tmp" border="0"></a>

Step 3 (untested):
After adding both .desktop files to steam, first run the tailscale-service (in steam). Then run the tailscale-client (in steam). Upon first launch in the terminal launched by the client shortcut, open the link in your browser on the Deck to sign in to Tailscale and authorize. You will likely need to enter your deck sudo password in each Konsole. I haven't had a chance to test this yet.

Alternate (tested and working):

Instead of using the desktop file shortcuts in steam, instead open 2 Konsoles and execute the following
Konsole 1

sudo ~/tailscale/tailscaled -socket /tmp/tailscaled.sock

Konsole 2

sudo ~/tailscale/tailscale -socket /tmp/tailscaled.sock up --operator=$USER