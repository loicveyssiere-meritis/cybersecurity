#!/bin/sh

SUDO=""
USER="me"
WORKSPACE="/home/workspace"

# System -----------------------------------------------------------------------
$SUDO apt-get update

$SUDO apt-get install -y nano vim tmux

if grep -q "^$USER:" /etc/passwd ;then
    echo "Create new user '$USER'"
    $SUDO useradd -m -s /bin/bash -G sudo $USER
    echo "Enter your password:"
    chpasswd
else
    echo "Skip, user '$USER' already exists"
fi



# Network
$SUDO apt-get install -y ssh net-tools curl wget telnet nmap tcpdump netcat

# Tools
$SUDO apt-get intall -y perl smbclient ftp
