#!/bin/sh
pamac update --no-confirm
pamac install libimobiledevice vim tmux fzf jdk-openjdk maven gradle nvm npm docker docker-compose snapd redshift python2 libreoffice-still --no-confirm
pamac install ttf-jetbrains-mono noto-fonts-emoji ttf-fira-code ttf-cascadia-code ttf-fantasque-sans-mono perl-font-ttf ttf-ubuntu-font-family --no-confirm
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc

sudo usermod -aG docker $USER
sudo systemctl enable docker.service

curl https://raw.githubusercontent.com/chubbyhippo/vimrc/master/.vimrc -o ~/.vimrc
curl https://raw.githubusercontent.com/chubbyhippo/ideavimrc/main/.ideavimrc -o ~/.ideavimrc
curl https://raw.githubusercontent.com/chubbyhippo/manjaro-sway/main/config -o ~/.config/sway/config

git config --global credential.helper store

pamac build jetbrains-toolbox google-chrome visual-studio-code-bin insomnia --no-confirm
