#!/bin/sh
echo "This program makes a temporary ram disk of 3gb"
echo "The disk is stored in your ram"
echo "To prevent data loss back up your data"
echo "Open this file in root terminal not sudo"
echo "Enter the current user"
read a
sudo umount /home/${a}/.cache
sudo umount /home/${a}/Desktop/temp
rm -rf /home/${a}/.cache
sudo mkdir /home/${a}/.cache
sudo mount -t tmpfs -o size=1g tmpfs /home/${a}/.cache
rm -rf /home/${a}/Desktop/temp
mkdir /home/${a}/Desktop/temp
sudo mount -t tmpfs -o size=3g tmpfs /home/${a}/Desktop/temp
sudo chown -R ${a} /home/${a}/Desktop/temp
sudo chown -R ${a} /home/${a}/.cache
chmod -R 700 /home/${a}/Desktop/temp
chmod -R 700 /home/${a}/.cache
exit 0
