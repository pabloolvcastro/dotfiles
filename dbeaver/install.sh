#! /bin/bash

wget -c https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb

sudo dpkg -i dbeaver-ce_latest_amd64.deb
sudo apt-get install -f
