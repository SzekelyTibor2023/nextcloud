#!/usr/bin/expect -f
spawn sudo snap install nextcloud
expect eof

spawn sudo nextcloud.manual-install tibor Gumibogyo5
expect eof

spawn sudo nextcloud.occ config:system:set trusted_domains 1 --value=storage1.cubehost.hu
expect eof

spawn sudo ufw disable
expect eof

spawn sudo nextcloud.enable-https lets-encrypt
expect "Would you like to use Let's Encrypt (Y/n):"
send "y\r"
expect "Please enter an email (for urgent notices or key recovery):"
send "tiborgaming2021@gmail.com\r"
expect "Please enter your domain name(s) (space-separated):"
send "storage1.cubehost.hu\r"
expect eof
