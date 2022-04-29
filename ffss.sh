#! /bin/bash
# .ffss.sh

sudo dnf install -y dialog

{

dialog -yesno “Do you want to optimize the dnf package manager? This is recommended” 10 31 


}

dialog --yesno "Do you want to optimize the dnf package manager? (recommended)" 10 30

function DialogGen

{

dialog –yesno “Hey Geek, Do You Want To Continue With Current Session?” 10 31 

}

DialogGen


sudo cp /etc/dnf/dnf.conf /etc/dnf/dnf.conf.bak
sudo cp dnf/dnf.conf /etc/dnf/dnf.conf

sudo nano /etc/dnf/dnf.conf
fastestmirror=True
max_parallel_downloads=10
defaultyes=True

echo 'fastestmirror=True' | sudo tee -a /etc/dnf/dnf.conf
echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf

[main]
gpgcheck=1
installonly_limit=3
clean_requirements_on_remove=True
best=False
skip_if_unavailable=True
fastestmirror=True
max_parallel_downloads=20
defaultyes=True
deltarpm=1
