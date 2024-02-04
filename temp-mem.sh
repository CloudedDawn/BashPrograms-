#!/bin/sh
echo "This program makes a temporary ram disk of 3gb"
echo "The disk is stored in your ram"
echo "To prevent data loss back up your data"
sudo umount /home/${USER}/.cache
sudo umount /home/${USER}/Desktop/temp
rm -rf /home/${USER}/.cache
sudo mkdir /home/${USER}/.cache
sudo mount -t tmpfs -o size=1g tmpfs /home/${USER}/.cache
rm -rf /home/${USER}/Desktop/temp
mkdir /home/${USER}/Desktop/temp
sudo mount -t tmpfs -o size=3g tmpfs /home/${USER}/Desktop/temp
sudo chown -R ${USER} /home/${USER}/Desktop/temp
sudo chown -R ${USER} /home/${USER}/.cache
chmod -R 700 /home/${USER}/Desktop/temp
chmod -R 700 /home/${USER}/.cache
exit 0
