#!/bin/bash

sudo yum groupinstall "Development Tools" -y
sudo yum install ncurses ncurses-devel -y

# Download sources for libevent and make and install
wget https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz
tar -xvzf libevent-2.1.8-stable.tar.gz
cd libevent-2.1.8-stable
sudo ./configure --prefix=/usr/local
sudo make
sudo make install
cd ..
sudo rm -rf libevent-2.1.8-stable libevent-2.1.8-stable.tar.gz

# Download sources for tmux and make and install
wget https://github.com/tmux/tmux/releases/download/2.7/tmux-2.7.tar.gz
tar -xvzf tmux-2.7.tar.gz
cd tmux-2.7
sudo LDFLAGS="-L/usr/local/lib -Wl,-rpath=/usr/local/lib" ./configure --prefix=/usr/local
sudo make
sudo make install
cd ..
sudo rm -rf tmux-2.7 tmux-2.7.tar.gz

# Reopen your terminal and run: tmux -V
echo "Reopen your terminal and run: tmux -V"
tmux -V
