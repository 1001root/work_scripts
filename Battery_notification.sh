#!/bin/bash
DISPLAY=:0.0
 a=$(acpi |grep "charg"| awk '{print $4}'|cut -c -2)
echo $a
if [ $a -lt 30 ]; then
	zenity --question --text "       The Fuck Man \n          \t   Charge Your Junk!!!!!!!!" &
#	b=$(ps -ef | grep "Battery"| grep "/bin"| awk '{print$2}')
#	echo $b
	ps -ef | grep "Battery"| grep "/bin"| awk '{print$2}'| xargs kill -9
	exit 0
fi
if [ $a -eq 95 ]; then
	zenity --question --text "         The Fuck Man \n     \t      Junk Overpowered ! ! ! ! !" 
	ps -ef | grep "Battery" | grep "/bin" | awk '{print$2}'| xargs kill -9
	exit 0
fi
if [ $a -gt 90 ]; then
	zenity --notification --text "         The Fuck Man \n     \t      Junk Overpowered ! ! ! ! !" 
	ps -ef | grep "Battery" | grep "/bin" | awk '{print$2}'| xargs kill -9
	exit 0
fi
exit 0
