#!/bin/sh

SUDO=""
WORKSPACE="/home/workspace"

$SUDO apt update

$SUDO apt install -y curl wget gnupg2

URL="https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb"

if [ ! -f "$WORKSPACE/tools/msfinstall" ]; then
    echo "Start MFS download"
    curl $URL > $WORKSPACE/tools/msfinstall
    chmod +x $WORKSPACE/tools/msfinstall
else
  echo "Skip MFS download"
fi

$WORKSPACE/tools/msfinstall


