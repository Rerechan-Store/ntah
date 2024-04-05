#!/bin/bash
repo="https://raw.githubusercontent.com/Rerechan-Store/ntah/main"
clear

if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
if [ -f "/etc/xray/domain" ]; then
echo "Script Already Installed"
#exit 1
fi

clear
cd
if [ -f "/root/core" ];then 
echo -e "Kamu Terdeteksi Mau Dekrip"
rm -f /root/core
fi
clear

clear
echo " Done Install "
sleep 2
clear
mkdir -p /funny
sleep 1
mkdir -p /rere
sleep 1
mkdir -p /etc/slowdns
sleep 1
mkdir -p /etc/xray
sleep 1
mkdir -p /etc/websocket
sleep 1
mkdir -p /etc/xray
sleep 1
mkdir -p /etc/funny
sleep 1
mkdir -p /etc/funnt/limit
sleep 1
mkdir -p /etc/funny/limit/xray
sleep 1
mkdir -p /etc/funny/limit/xray/ip
sleep 1
mkdir -p /etc/funny/limit/xray/quota
sleep 1
mkdir -p /etc/funny/limit/ssh
sleep 1
mkdir -p /etc/funny/limit/ssh/ip
sleep 1
mkdir -p /etc/v2ray
sleep 1
mkdir -p /var
mkdir -p /var/lib
mkdir -p /var/lib/crot
chmod /var/lib/crot/*
mkdir -p /var/log
mkdir -p /var/log/xray
touch /var/log/xray/access.log
touch /var/log/xray/error.log
touch /var/log/xray/error1.log
touch /var/log/xray/akses.log
touch /var/log/xray/access1.log
touch /var/log/xray/access2.log
touch /var/log/xray/access3.log
touch /var/log/xray/access4.log
touch /var/log/xray/access5.log
touch /var/log/xray/access6.log
touch /etc/funny/.l2tp
touch /etc/funny/.sstp
touch /etc/funny/.pptp
touch /etc/funny/.ptp
touch /etc/funny/.wireguard
touch /etc/funny/.socks5
chmod +x /var/log/xray/*
touch /etc/funny/limit/ssh/ip/syslog
touch /etc/funny/limit/ssh/ip/rere
echo "9999999" >> /etc/funny/limit/ssh/ip/syslog
echo "9999999" >> /etc/funny/limit/ssh/ip/rere

clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green          Input Domain              	$NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -p "Input Your SubDomain : " domain
echo "$domain" > /etc/xray/domain
echo "nIrqFdFbBH/XMxucYw+v2g==" > /etc/xray/serverpsk
clear


# Update Upgrade dlu
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
apt update -y
apt upgrade -y
apt dist-upgrade -y
apt-get remove --purge ufw firewalld -y
apt-get remove --purge exim4 -y
apt install ruby -y
apt -y install wget curl
gem install lolcat
apt install python -y
apt install neofetch -y
apt install bc -y
apt install make -y
apt install cmake -y
apt install haproxy -y
apt install coreutils -y
apt install rsyslog -y
apt install net-tools -y
apt install zip -y
apt install unzip -y
apt install nano -y
apt install sed -y
apt install gnupg -y
apt install bc -y
apt install jq -y
apt install apt-transport-https -y
apt install -y make python build-essential npm nodejs
apt install build-essential -y
apt install dirmngr -y
apt install libxml-parser-perl -y
apt install neofetch -y
apt install git -y
apt install haproxy -y
apt install lsof -y
apt install libsqlite3-dev -y
apt install squid -y
apt install squid-3 -y
apt install libz-dev -y
apt install gcc -y
apt install g++ -y
apt install libreadline-dev -y
apt install zlib1g-dev -y
apt install libssl-dev -y
apt install libssl1.0-dev -y
apt install dos2unix -y
apt install ruby -y
gem install lolcat
apt install socat -y
apt install libpcre3-dev -y
apt install htop -y
apt install make -y
clear

apt-get --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen rsyslog iftop htop net-tools zip unzip wget net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential dirmngr libxml-parser-perl neofetch git lsof
apt autoclean -y
apt -y remove --purge unscd
apt-get -y --purge remove samba*;
apt-get -y --purge remove apache2*;
apt-get -y --purge remove bind9*;
apt-get -y remove sendmail*
apt autoremove -y

apt -y install nginx php php-fpm php-cli php-mysql libxml-parser-perl
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
cd
wget sc.funy.biz.id/tengine.zip ; unzip tengine.zip ; rm -fr tengine.zip ; chmod +x * ; ./configure --prefix=/usr/local/nginx --with-http_v2_module ; make ; sudo make install ; rm -fr /usr/sbin/nginx ; mv /usr/local/nginx/sbin/nginx /usr/sbin/nginx ; rm -fr /root/* ; chmod 777 /usr/sbin/nginx

wget $repo/nginx.conf -O /usr/local/nginx/conf/nginx.conf
clear

sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill
cd /root/
wget https://raw.githubusercontent.com/acmesh-official/acme.sh/master/acme.sh
bash acme.sh --install
rm acme.sh
cd .acme.sh
bash acme.sh --register-account -m rere@rerechan02.com
bash acme.sh --issue --standalone -d $domain --force
bash acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key

# setting vnstat
apt -y install vnstat
/etc/init.d/vnstat restart
apt -y install libsqlite3-dev
wget https://humdi.net/vnstat/vnstat-2.6.tar.gz
tar zxvf vnstat-2.6.tar.gz
cd vnstat-2.6
./configure --prefix=/usr --sysconfdir=/etc && make && make install
cd
vnstat -u -i $NET
sed -i 's/Interface "'""eth0""'"/Interface "'""$NET""'"/g' /etc/vnstat.conf
chown vnstat:vnstat /var/lib/vnstat -R
systemctl enable vnstat
/etc/init.d/vnstat restart
rm -f /root/vnstat-2.6.tar.gz
rm -rf /root/vnstat-2.6

echo "
*/15 * * * * echo -n /var/log/xray/access.log
*/15 * * * * echo -n /var/log/xray/error.log
*/15 * * * * echo -n /var/log/xray/error1.log
*/15 * * * * echo -n /var/log/xray/akses.log
*/15 * * * * echo -n /var/log/xray/access1.log
*/15 * * * * echo -n /var/log/xray/access2.log
*/15 * * * * echo -n /var/log/xray/access3.log
*/15 * * * * echo -n /var/log/xray/access4.log
*/15 * * * * echo -n /var/log/xray/access5.log
*/15 * * * * echo -n /var/log/xray/access6.log
*/15 * * * * /usr/bin/xp
*/15 * * * * /usr/bin/limit-ip" >> /etc/crontab

echo "
menu" >> /root/.profile
timedatectl set-timezone Asia/Jakarta


# Run Filer:
cd /etc/xray ; wget $repo/json.zip ; unzip json.zip ; rm -fr json.zip ; chmod +x * ; cd

cd /usr/local/bin ; wget $repo/bin.zip ; unzip bin.zip ; rm -fr bin.zip ; chmod +x * ; cd

cd /usr/bin ; wget $repo/menu.zip ; unzip menu.zip ; rm -fr menu.zip ; chmod +x * ; cd

cd /etc/systemd/system ; wget $repo/service.zip ; unzip service.zip ; rm -fr service.zip ; cd
cd
clear

# Service
systemctl stop apache2
systemctl disable apache2

systemctl enable v2ray xray quota cron nginx
systemctl restart v2ray xray quota cron nginx

rm -fr /root/*
echo -e "
Reboot In 15Second

Press CTRL + C to Cancel

By @Rerechan02"
sleep 15
reboot