#!/bin/bash
# TODO: Solucionar el problema con niceness en WSL
echo 'Actualizando repositorios...';
sudo apt-get update
echo 'Actualizando sistema...';
sudo apt-get upgrade
echo 'Descargando dependencias...';
sudo apt-get install build-essential curl file git file git git-core -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
test -r ~/.bash_profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
# Evaluar si existe el comando en el sistema
echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.profile
echo 'Se instaló Linuxbrew'
brew search php