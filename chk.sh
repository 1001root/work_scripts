#!/bin/bash
#cks up the local filesystem on the external HDD

#sleep 60

DISPLAY=:0.0

zenity --question --text "Do you want to backup? Be sure to turn on the HDD."
if [ $? -ne 0 ]
	    then exit 1
	    fi

