#!/bin/sh
pamac update --no-confirm
pamac install vim tmux jdk11-openjdk maven gradle nvm npm ttf-jetbrains-mono docker docker-compose snapd virtualbox linux510-virtualbox-host-modules redshift python2 libreoffice-still noto-fonts-emoji --no-confirm
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc

sudo usermod -aG docker $USER
sudo systemctl enable docker.service

curl https://raw.githubusercontent.com/chubbyhippo/vimrc/master/.vimrc -o ~/.vimrc
curl https://raw.githubusercontent.com/chubbyhippo/ideavimrc/main/.ideavimrc -o ~/.ideavimrc
curl https://raw.githubusercontent.com/chubbyhippo/manjaro-sway/main/config -o ~/.config/sway/config

git config --global credential.helper store

pamac build jetbrains-toolbox google-chrome visual-studio-code-bin insomnia --no-confirm
