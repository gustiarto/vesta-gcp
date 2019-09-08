#!/bin/bash

cd /tmp && curl -O http://vestacp.com/pub/vst-install.sh
bash /tmp/vst-install.sh --nginx yes --apache yes --phpfpm no --named yes --remi yes --vsftpd yes --proftpd no --iptables yes --fail2ban yes --quota no --exim no --dovecot no --spamassassin no --clamav no --softaculous yes --mysql yes --postgresql no --hostname null.com --email null@null.com --password passwordnya --force
(crontab -l 2>/dev/null; echo "*/5 * * * * sed -i 's/FILEMANAGER_KEY='\'''\''/FILEMANAGER_KEY='\''ILOVEREO'\''/g' /usr/local/vesta/conf/vesta.conf") | crontab -
wget -P /usr/local/bin/ https://github.com/gustiarto/vesta-gcp/raw/master/gdrive && chmod +x /usr/local/bin/gdrive
wget -P /usr/local/bin/ https://github.com/gustiarto/vesta-gcp/raw/master/onedrive && chmod +x /usr/local/bin/onedrive
wget -P /usr/local/bin/ https://github.com/gustiarto/vesta-gcp/raw/master/youtube-dl && chmod +x /usr/local/bin/youtube-dl
clear
echo " __          _______  _____  ____          _____    _      _    _  ____  "
echo " \ \        / /_   _|/ ____||  _ \   /\   |  __ \  | |    | |  | |/ __ \ "
echo "  \ \  /\  / /  | | | (___  | |_) | /  \  | |__) | | |    | |__| | |  | |"
echo "   \ \/  \/ /   | |  \___ \ |  _ < / /\ \ |  _  /  | |    |  __  | |  | |"
echo "    \  /\  /   _| |_ ____) || |_) / ____ \| | \ \  | |____| |  | | |__| |"
echo "     \/  \/   |_____|_____/ |____/_/    \_\_|  \_\ |______|_|  |_|\____/ "
echo "                                                                         "
echo "-------------------------------------------------------------------------"
echo -n "URL Login      = https://" && wget -qO- http://ipecho.net/plain | xargs echo -n && echo ":8083"
echo "Username Login = admin"
echo "Password Login = passwordnya (Ganti sak cepete)"
echo "                                                                         "
echo "-------------------------------------------------------------------------"
echo "Thanks for using M.A.N.'s script"
echo "                                                                         "
