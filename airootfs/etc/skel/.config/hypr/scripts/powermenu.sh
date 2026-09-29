#!/bin/bash

options=" Kapat\n󰜉 Yeniden Başlat\n󰤄 Uyku\n󰍃 Oturumu Kapat"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Aura Linux Power")

case "$chosen" in
    " Kapat") poweroff ;;
    "󰜉 Yeniden Başlat") reboot ;;
    "󰤄 Uyku") systemctl suspend ;;
    "󰍃 Oturumu Kapat") hyprctl dispatch exit ;;
esac
