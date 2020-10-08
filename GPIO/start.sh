#!/bin/bash
#Date:		03:39 2020-0925
#Author:	Create by Elecrow
#Description:	this script function is configure the file to the new system
#Version:	1.0

FOLDER="/usr/share/crowpi2"
mkdir ${FOLDER} &>>error.txt
cp ./GPIO.py ${FOLDER}

RESULT=$(grep "GPIO.py" /etc/rc.local)
if [ -z "${RESULT}" ]; then
	sed -i 's@fi@&\npython /usr/share/crowpi2/GPIO.py@' /etc/rc.local
else
	echo "Script has been added!"
fi

