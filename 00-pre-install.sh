#!/bin/bash

uname -a

# Docker works best on kernel 3.8
sudo apt-get update
sudo apt-get install linux-headers-3.8.0-27-generic linux-image-3.8.0-27-generic linux-headers-3.8.0-27
sudo update-grub

sudo reboot

ls -l /sys/class/misc/device-mapper

sudo modprobe dm_mod
