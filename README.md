# steamdeck-tailscale

Crappy things I have made for tailscale on the deck.

READ THIS LINE, NOTE: I have yet to test this on the deck, feel free to test for me!....still waiting on my shipment. Does it even have curl installed? or wget? who knows? not me!

Probably want to do this in Desktop MODE then use Game mode after adding the shortcuts in steam.

Anyway, the idea is to curl this bash script from your terminal, it will download latest Tailscale and set it up in /tmp/.

You will need a web browser installed and probably curl, i am assuming it doesnt ship with the deck.

YOU will need to add the 2 desktop files to steam via the "Add a Non-Steam game option" path is under /tmp/

First run the tailscale-service file then run the tailscale-client file. In the terminal launched the client, open the link in your browser on the Deck to sign in to Tailscale and authorize.