# Plex Amp on Raspberry Pi Zero

The docker image I use on the Pi4 didn't build on the Zero, so I had to instead do a scripted install.

The overhead of the container might be too much for the little Pi.

The base of the instructions came from here; <https://forums.plex.tv/t/suggestions-for-the-future-headless-rpi-support/218187/56>

TODO: I also use a HifiBerry DAC Zero, so I've included the setup for this in a separate script.

## IMPORTANT

You must get a server.json file from existing Plexamp install and put it in the same fodler as this script before running.

Sign out and back into your existing install to get a new identifier/token.
