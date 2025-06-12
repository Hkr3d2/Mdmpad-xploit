sudo apt update
sudo apt upgrade
sudo apt install xfce4 xfce4-terminal tightvncserver firefox gedit
cd
git clone https://github.com/novnc/noVNC
pip install websockify
vncserver :1
vncserver -kill :1
cd
touch vnc.sh 
echo cd noVNC >> vnc.sh
echo vncserver :1 -geometry 2350x1620 >> vnc.sh
echo pkill -f websockify >> vnc.sh
echo python3 -m websockify --web . 6080 localhost:5901 >> vnc.sh
echo vncserver -kill :1 >> vnc.sh
chmod +x vnc.sh
echo /home/codespace/vnc.sh >> ~/.bashrc
echo startxfce4 >> ~/.vnc/xstartup
