#!/bin/bash

VPN_KEY="musico15.ovpn"
SUDO=""
WORKSPACE="/home/workspace"

$SUDO apt update
$SUDO apt-get install -y openvpn

$SUDO openvpn --config $WORKSPACE/secrets/vpn/$VPN_KEY
