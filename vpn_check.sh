#!/bin/bash
while true; do
    if ! nc -zw1 google.com 443; then
        echo "Disconnected, rebooting"
        sudo reboot
    fi
    sleep 600
done
