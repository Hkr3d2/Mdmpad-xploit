sudo apt update
sudo apt upgrade
sudo apt install xfce4 xfce4-terminal tightvncserver firefox gedit
cd
git clone https://github.com/novnc/noVNC
pip install websockify
echo „startxfce4“ >> ~/.vnc/xstartup
echo „firefox“ >> ~/.vnc/xstartup
vncserver :1
vncserver -kill :1
touch vnc.sh 
echo „cd noVNC
pkill -f websockify
python3 -m websockify --web . 6080 localhost:5901
vncserver :1 -geometry 2350x1620“ > vnc.sh
chmod +x vnc.sh
echo „/home/codespace/vnc.sh“ >> ~/.bashrc
