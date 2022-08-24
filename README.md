# steamdeck-tailscale

Crappy things I have made for tailscale on the deck.

READ THIS LINE, NOTE: I have yet to test this on the deck, feel free to test for me!....still waiting on my shipment. Does it even have curl installed? or wget? who knows? not me!

Probably want to do this in Desktop MODE then use Game mode after adding the shortcuts in steam.

Anyway, the idea is to curl this bash script from your terminal, it will download latest Tailscale and set it up in /tmp/.

Open a terminal and run curl -s https://raw.githubusercontent.com/Str-iker/steamdeck-tailscale/main/steamdeckts.bash | bash

You will need a web browser installed and probably curl, i am assuming it doesnt ship with the deck.

YOU will need to add the 2 desktop files to steam via the "Add a Non-Steam game option" path is under /tmp/

<a href="https://imgbb.com/"><img src="https://i.ibb.co/Pj0RTtn/non-steam-tmp.png" alt="non-steam-tmp" border="0"></a>

After adding both .desktop files to steam, first run the tailscale-service (in steam). Then run the tailscale-client (in steam). Upon first launch in the terminal launched by the client shortcut, open the link in your browser on the Deck to sign in to Tailscale and authorize.

Note: This won't survive a reboot, using /tmp/ for now since that likely will be writeable....I am guessing
