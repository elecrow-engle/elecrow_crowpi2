# elecrow_crowpi2

#####Expanding the Raspberry Pi file system<br>
open the PI’s configuration screen (in the terminal window) by typing:<br>

`sudo raspi-config`<br>

Select as follows：<br>
![Image text](https://github.com/elecrow-engle/elecrow_crowpi2/blob/main/j1.png)<br>
![Image text](https://github.com/elecrow-engle/elecrow_crowpi2/blob/main/j2.png)<br>

click:<br>
Finish<br>
select ‘YES‘ when it asks for a reboot.<br>
#Which raspberry pi version is recommended by Crowpi2 software?<br>
<br>
Crowpi2 software is recommended to run on RPi4 2G or higher, preferably 4G or 8GB.<br>
<br>
#Why can't SDA0 pins be used?<br>
Because this pin is used to detect the start pin of the PCBA board, it may cause the device to shut down if used.<br>
<br>

#To install the new Raspbain system, what configuration should be done:<br>
If you use the new Raspbain image, open the config.txt file in the TF kagan directory after the burn is completed, and modify the config.txt code as follows (add at the end):<br>

<br>
`hdmi_force_hotplug=1`<br>
`max_usb_current=1`<br>
`hdmi_group=2`<br>
`hdmi_mode=87`<br>
`hdmi_cvt 1920 1080 60 6 0 0 0`<br>
`hdmi_drive=2`<br>
`enable_uart=1`<br>

<br>
In addition:<br>
Execute the following command:<br>
`git clone https://github.com/elecrow-engle/elecrow_crowpi2.git`<br>
`cd elecrow_crowpi2/GPIO`<br>
`sudo bash ./start.sh` <br>







