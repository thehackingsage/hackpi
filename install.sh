echo "*Raspberry Pi Update, Autologin and Tools for Kali Linux by Mr. SAGE*"
echo "**************************Performing Update***************************"
apt-get update
echo "************************Installing xfce4 GUI**************************"
apt-get install kali-defaults kali-root-login desktop-base xfce4 xfce4-places-plugin xfce4-goodies
apt-get install lightdm
dpkg-reconfigure lightdm
echo "****************************Installing Vino****************************"
apt-get -y install vino
gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.Vino require-encryption false
echo "VNC Server Setup... Done !!!"
mkdir /root/.config/autostart
echo "**********************Making Autorun VNC Script************************"
echo "[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=VINO
Comment=
Exec=/usr/lib/vino/vino-server
StartupNotify=false
Terminal=false
Hidden=false" > /root/.config/autostart/vino.desktop
echo "VNC Autorun on Startup... Done !!!"
echo "**************************Enabling AutoLogin****************************"
mv /etc/lightdm/lightdm.conf  /etc/lightdm/lightdm.conf.bak
mv /etc/pam.d/lightdm-autologin  /etc/pam.d/lightdm-autologin.bak
cp lightdm.conf /etc/lightdm/lightdm.conf
cp lightdm-autologin /etc/pam.d/lightdm-autologin
echo "AutoLogin on Startup... Done !!!"
echo "***********************Installing Hacktronian***************************"
git clone https://github.com/thehackingsage/hacktronian.git
cd hacktronian
chmod +x install.sh
./install.sh
echo "HACKTRONIAN Successfully Installed...!!!"
