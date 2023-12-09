sudo apt-get update -y

sudo apt-get upgrade -y

sudo snap install nextcloud

sudo nextcloud.manual-install tibor Gumibogyo5

sudo nextcloud.occ config:system:set trusted_domains 1 --value=video.kesseyrecords.hu

sudo nextcloud.enable-https lets-encrypt --non-interactive --agree-tos --email tiborgaming2021@gmail.com
