#!/bin/bash

VPN_KEY="musico15.ovpn"

SUDO=""
$SUDO apt update
$SUDO apt-get install -y openvpn

$SUDO openvpn --config ./secrets/vpn/$VPN_KEY
