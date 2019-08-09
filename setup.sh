#!/usr/bin/env bash


echo_header () {
  echo "
########################################
#
#   $1
#
########################################
  "
}


echo_header "Installing some things"
sudo apt install -y --no-install-recommends \
    awscli \
    build-essential \
    curl \
    dbus \
    dconf-cli \
    gcc \
    git \
    htop \
    linux-headers-$(uname -r) \
    mlocate \
    python-pip \
    python-setuptools \
    ranger \
    tmux \
    uuid-runtime \
    vim \
    wget

echo_header "Setting up terminal"
bash -c  "$(wget -qO- https://git.io/vQgMr)"

echo_header "Setting up dev tools"
sudo snap install micro
cp -r micro ~/.config/
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo_header "Setting up tmux"
cp tmux.conf ~/.tmux.conf

echo_header "Setting up bashrc"
bashrc=$(realpath bashrc)
if ! grep "$bashrc" ~/.bashrc > /dev/null; then
  echo "source $bashrc" >> ~/.bashrc
fi
