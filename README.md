# Plug and Play Portable Hacking Machine with RPi3

[Article With Image](https://thehacktronian.blogspot.com/2018/08/SetupKaliLinuxOnRaspberryPi3.html)

The Raspberry Pi is a low-cost, credit-card-sized ARM computer. Despite being a good bit less powerful than a laptop or desktop PC, its affordability makes it an excellent option for a tiny Linux system and it can do far more than act as a media hub.

The Raspberry Pi provides a SD card slot for mass storage and will attempt to boot off that device when the board is powered on.

So Let's Get Started..

## Things You Need :

* Raspberry Pi 3 : [Amazon](http://amzn.in/igaal2Q)

* SD Card (16 GB) : [Amazon](http://amzn.in/5syvCew)

* Card Reader/SD Card Adoptor : [Amazon](http://amzn.in/akD4COz)

* PowerBank/Charger : [Amazon](http://amzn.in/fE4JBeA)

* PC/Laptop : [Amazon](https://www.amazon.in/b?node=1375424031)

* Linux Operating System : [Kali Linux](https://www.kali.org/downloads/) or [ParrotSecOS](https://www.parrotsec.org/download-other.php)

* Brain and Patience... 

## Installing Kali/Parrot on SD-Card (i'm using Kali Linux) :

1. Download the [Kali Linux](https://www.offensive-security.com/kali-linux-arm-images/) or [ParrotSecOS](https://cdimage.parrotsec.org/parrot/iso/arm/rpi) Raspberry Pi image.

2. Download [Etcher](https://www.balena.io/etcher/) for You Operating System

3. Get a fast SD card with at least 16 GB capacity and Connect it with your PC/Laptop using Card Reader.

4. Run Etcher, choose Downloaded .img file of Kali Linux then choose SD Card as disk then click on Flash button.

#### WARNING : This Process will overwrite any existing data on your SD card. If you specify the wrong device path, you could wipe out your computer’s hard disk !!!

5. This process can take a while depending on your SD card’s device speed and image size..

## Configuring Kali Linux without Display : 

1. Once the flashing process complete, open a Linux Operating System As Root (you can also use a Live Linux OS) (*if you're already using Linux skip this step).

2. Open Terminal and move to Desktop by typing : ```cd /root/Desktop```

3. Now Download HackPi by typing : ```git clone https://github.com/thehackingsage/hackpi.git``` 

4. Connect SD-Card with your PC/Laptop using card reader, don't mount the drive.

5. Open GParted Application by typing : ```gparted```

6. Select SD Card from the Top Right Corner.

7. Select the ext4 partition.

8. Resize the partition by dragging the right edge of the partition all the way to the right (click/drag the right edge).

9. then click on the green check mark, "Return" arrow, or other "apply" control to execute these changes.

10. after that Mount the SD Card.

11. Open Boot Partition of SD Card. 

12. Create a simple empty file named ```ssh``` on Boot Partition of SD Card.

13. After that Goto HackPi > Config Files > etc > wpa_supplicant and open wpa_supplicant.conf in a text editor

14. Type Your ```WiFi SSID``` in the place of ```Type_SSID``` and ```WiFi Password``` in the place of ```Type_Password```. and then save the file (ctrl+s).

15. Now go back to Config File folder and Copy the etc folder and Paste it into Root Partition of SD Card.. it will ask you for Marge and Replace Files or Folder, click on Yes..

16. Copy and Paste HackPi folder in Root Partition of SD Card (/root/Downloads/)

17. Insert the SD card into the Raspberry Pi and power it on. it'll automatically login as root and connect to your wifi.

18. Now Download [Putty](https://www.putty.org/) and [VNC Viewer](https://www.realvnc.com/en/connect/download/viewer/) and Install Them.

19. The Default Static IP of Your KaliPi is 192.168.1.155.

20. Open Putty And Type ```192.168.1.155``` in Host and ```22``` in Port and click on Open.

21. It'll ask you for log as : ```root``` and Password : ```toor```

22. Now goto hackpi folder by typing : ```cd Downloads/hackpi/```

23. Give execution permission to install.sh file by typing : ```chmod +x install.sh```

24. now execute the file by typing : ```./install.sh```

25. Press Enter and Wait for Finish the Installation..

#### It'll Update Your Kali Linux/ParrotSecOS, Start Up The XFCE Desktop Environment, Configure Auto Root Login and Configure VNC Autorun on Startup..

#### In The Middle of Installation It'll Ask You for VNC Password, you can type whatever password you want, then it'll ask for Enter A View-Only Password?(y/n) : Type ```n``` and Hit Enter..

26. Once the Installation process complete. restart the raspberry pi by typing : ```reboot```

All Done.. !!!

## Power On The Portable Hacking Machine :

1. Now Just Power On Your Raspberry Pi

2. Open VNC Viewer

3. Create a New Connection (CTRL+N)

4. Type ```192.168.1.155:5900``` in VNC Server and ```HackPi``` in Name and click on OK.

5. Now Double Click on Kali Pi, It'll Ask You For Password So Type Your VNC Password, Check Remember Password and Click OK.

#### By default, the Kali Linux Raspberry Pi image has been streamlined with the minimum tools, similar to all the other ARM images. If you wish to upgrade the installation to a standard desktop installation, you can include the extra tools by installing the kali-linux-full metapackage..

6. So Open Your Terminal and Type ```apt-get install kali-linux-full -y``` and hit Enter.

That's It.. !!!

if you face any question or any problem in this process feel free to ask.. :)

and If You Like This Repo. Please Share This With Your Friends..

& Don't Forget To Follow Me At [Twitter](https://www.twitter.com/thehackingsage), [Instagram](https://www.instagram.com/thehackingsage), [Github](https://www.github.com/thehackingsage) & SUBSCRIBE My [YouTube](https://www.youtube.com/channel/UCYK1n9A4TUq1CvGc6F3DzoA) Channel..!!!

Happy Hacking !!!
