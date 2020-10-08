# elecrow_crowpi2

#####Expanding the Raspberry Pi file system<br>
open the PI’s configuration screen (in the terminal window) by typing:<br>

sudo raspi-config<br>

Select as follows：<br>
![Image text](https://github.com/elecrow-engle/elecrow_crowpi2/blob/main/j1.png)<br>
![Image text](https://github.com/elecrow-engle/elecrow_crowpi2/blob/main/j2.png)<br>

click:<br>
Finish
select ‘YES‘ when it asks for a reboot.
#Which raspberry pi version is recommended by Crowpi2 software?

Crowpi2 software is recommended to run on RPi4 2G or higher, preferably 4G or 8GB.

#Why can't SDA0 pins be used?
Because this pin is used to detect the start pin of the PCBA board, it may cause the device to shut down if used.


#To install the new Raspbain system, what configuration should be done:
If you use the new Raspbain image, open the config.txt file in the TF kagan directory after the burn is completed, and modify the config.txt code as follows (add at the end):


hdmi_force_hotplug=1
max_usb_current=1
hdmi_group=2
hdmi_mode=87
hdmi_cvt 1920 1080 60 6 0 0 0
hdmi_drive=2
enable_uart=1


In addition:
Execute the following command:
git clone https://github.com/elecrow-engle/elecrow_crowpi2.git
cd elecrow_crowpi2/GPIO
sudo bash ./start.sh 







