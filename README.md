# homeassistant-to-dunst

config files for sending a dinner alarm to LAN PCs from homeassistant to dunst

1. DEPENDENCIES

sudo pacman -S mosquitto dunst libnotify vorbis-tools

2. FILE PATHS
   
~/homeassistant-alert.sh

~/dinner.ogg

~/.config/lxsession/LXDE/autostart

~/.config/systemd/user/homeassistant-alert.service

~/.config/dunst/dunstrc

3. CHEATSHEET OF COMMANDS FOR SETTING UP SYSTEMD SERVICES

sudo chmod +x homeassistant-alert.sh

systemctl --user enable homeassistant-alert.service

systemctl --user reset-failed homeassistant-alert.service

systemctl --user restart homeassistant-alert.service

systemctl --user status homeassistant-alert.service

journalctl --user -u homeassistant-alert.service -b



