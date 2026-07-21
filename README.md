# homeassistant-to-dunst

Some config files for sending a "dinner" alarm via MQTT to multiple LAN PCs from homeassistant to dunst
Mom presses button on tablet, and the kids' PCs in their rooms get this unmissable pop-up plus audio
X11 desktop environments normally are good at putting these over the top of a game without crashing the game, but
there is unlimited potential for malarky.
MQTT is good for this because a dinner alarm can share/piggyback the nice UI of HomeAssistant, whilst also being
extensible if in future I want also to flash a red light in dad's shed and drop myself through the ceiling into
my trousers.

Installation is from the *CLIENT* perspective, the setup in the HomeAssistant server is simple and done through the webgui

e.g. Arch Linux, LXDE, Pulseaudio

Everything here has the status of "NOTE TO SELF" and will only be useful to others if adjusted for what their clients are like
There is a classic Linux problem of a project taking a while to set up and needing multiple files, but not being worth
making into a universal installer-script that would work on all client PCs.

There must be brought together:- the init system + a notification daemon + an audio command + the Desktop Environment




**1. DEPENDENCIES**

sudo pacman -S mosquitto dunst libnotify vorbis-tools


**2. FILE PATHS**
   
~/homeassistant-alert.sh

~/dinner.ogg

~/.config/lxsession/LXDE/autostart

~/.config/systemd/user/homeassistant-alert.service

~/.config/dunst/dunstrc


**3. CONFIGURATION**

Add dunst to the autostart file of the DE

Enter correct local username into systemd service
Enter correct HomeAssistant username and password into shell script

Enter correct topic name into shell script - currently this is for mom to tell kids on the gaming PCs that it is time for dinner therefore **topic: desktop/gaming/alerts**

Create an automation in HomeAssistant and paste in the .yaml

Choose the audio file


**4. CHEATSHEET OF COMMANDS FOR SETTING UP SYSTEMD SERVICES**

sudo chmod +x homeassistant-alert.sh

systemctl --user enable homeassistant-alert.service

systemctl --user reset-failed homeassistant-alert.service

systemctl --user restart homeassistant-alert.service

systemctl --user status homeassistant-alert.service

journalctl --user -u homeassistant-alert.service -b



