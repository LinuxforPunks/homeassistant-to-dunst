# homeassistant-to-dunst

Some config files for sending a dinner alarm to LAN PCs from homeassistant to dunst

**1. DEPENDENCIES**

sudo pacman -S mosquitto dunst libnotify vorbis-tools


**2. FILE PATHS**
   
~/homeassistant-alert.sh

~/dinner.ogg

~/.config/lxsession/LXDE/autostart

~/.config/systemd/user/homeassistant-alert.service

~/.config/dunst/dunstrc


**3. CONFIGURATION**

Add dunst to the autostart file of the DE (example is for LXDE)

Enter correct username into systemd service

Enter correct topic name into shell script - currently this is for mummy to tell kids on gaming PCs that it is time for dinner so **topic: desktop/gaming/alerts**

Create an automation in HomeAssistant and paste in the .yaml


**4. CHEATSHEET OF COMMANDS FOR SETTING UP SYSTEMD SERVICES**

sudo chmod +x homeassistant-alert.sh

systemctl --user enable homeassistant-alert.service

systemctl --user reset-failed homeassistant-alert.service

systemctl --user restart homeassistant-alert.service

systemctl --user status homeassistant-alert.service

journalctl --user -u homeassistant-alert.service -b



