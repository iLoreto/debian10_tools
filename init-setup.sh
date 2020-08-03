echo "start init-setup"
echo "updating system"
apt-get update -y
apt-get upgrade -y
echo "adding tools"
apt-get install zsh git nano cmatrix tmux ufw lolcat sysvbanner -y
echo "setting up ufw"
systemctl enable ufw
systemctl start ufw
ufw allow OpenSSH
ufw --force enable
ufw status
echo "setting up alias"
echo "alias ll='ls -la'" >> /etc/profile.d/00-aliases.sh
echo "setting up timezone"
timedatectl set-timezone America/Los_Angeles
timedatectl
echo "setup motd"
uname -snrvm > /var/run/motd.dynamic
systemctl disable motd
mkdir /etc/update-motd.d
rm -f /etc/motd
cp /var/tools/motd/10logo /etc/update-motd.d/
cp /var/tools/motd/20updates /etc/update-motd.d/
chmod a+x /etc/update-motd.d/*

echo "done"
