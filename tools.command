-------------NETWORK------------------
sudo ifconfig wlan0 up
sudo rfkill list all
rfkill unblock wlan
sudo dhclient

------simple administration--------------
du -sh /directory name    #find size of a directory...directory usage

--------------python server-------------------
python -m http.server --cgi 8000

-----------bootable-USB-------------
sudo umount /dev/sdX
sudo dd if=/path/to/ubuntu.iso of=/dev/sdX bs=4M && sync
------for checking block devices use----------
------lsblk----

---------------Format a bootable pendrive-----------
sudo dd if=/dev/zero of=/dev/sdb bs=4k && sync  
sudo fdisk /dev/sdb
        Then press letter o to create a new empty DOS partition table.
Make a new partition:

    Press letter n to add a new partition. You will be prompted for the size of the partition. Making a primary partition when prompted, if you are not sure.

    Then press letter w to write table to disk and exit.
format the partion then using:
sudo mkfs.vfat /dev/sdb1
and finally eject using:
 sudo eject /dev/sdb

--------------sound_troubleshoot-----------------------
/usr/sbin/alsactl restore     //works like a charm
pulseaudio -k


---------------------Python server-------------------
ufw disable
python3 -m http.server 90



------------------random_no. in file---------------
shuf -i 1-1000 -n 50000 -r -o unsorted.txt 

