#!/bin/bash

cd /tmp && curl -O http://vestacp.com/pub/vst-install.sh
bash /tmp/vst-install.sh --nginx yes --apache yes --phpfpm no --named yes --remi yes --vsftpd yes --proftpd no --iptables yes --fail2ban yes --quota no --exim no --dovecot no --spamassassin no --clamav no --softaculous yes --mysql yes --postgresql no --hostname null.com --email null@null.com --password passwordnya --force
echo "FILEMANAGER_KEY='ILOVEREO'" >> /usr/local/vesta/conf/vesta.conf
line="*/5 * * * * sed -i 's/FILEMANAGER_KEY='\'''\''/FILEMANAGER_KEY='\''ILOVEREO'\''/g' /usr/local/vesta/conf/vesta.conf"
(crontab -u root -l; echo "$line" ) | crontab -u root -l
/usr/local/vesta/bin/v-change-cron-job admin 5 0 12 "*" "*" 1 "sudo /usr/local/vesta/bin/v-backup-users"
/usr/local/vesta/bin/v-delete-firewall-rule 9
/usr/local/vesta/bin/v-delete-firewall-rule 8
/usr/local/vesta/bin/v-delete-firewall-rule 7
/usr/local/vesta/bin/v-delete-firewall-rule 6
/usr/local/vesta/bin/v-delete-firewall-rule 5
/usr/local/vesta/bin/v-delete-firewall-rule 4
/usr/local/vesta/bin/v-delete-firewall-rule 1
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
echo "-------------------------------------------------------------------------"
echo "Vesta Control Panel | https://vestacp.com/"
echo " - Hostname : null.com              - FTP      : no"
echo " - Email    : null@null.com         - DNS      : no"
echo " - WEB      : apache2               - MAIL     : no"
echo " - DB       : MySQL                 - Firewall : iptables+fail2ban"
echo " - FileMangr: yes                   - Softacls : yes"
echo "                                                                         "
echo "-------------------------------------------------------------------------"
echo "Thanks for using M.A.N.'s script | mail: m.a.n@icloud.com"
echo "                                                                         "
