# Cybersecurity personal content

This is my playground for cybersecurity learning and tests.
This is not perfect but still a very simple way to store content and setup.

## Setup

The workspace machine is a docker vanilla debian image. No Dockerfile from now,
the customization is performed incrementally with scripts.

A volume is binded to allow document sharing, facilitating coding inside the
machine or to visualise some documents.

First, run the docker container.

```bash
docker run --name pen -it -v $PWD/workspace:/home/me --cap-add=NET_ADMIN --privileged debian
```

Then, enter the docker container everytime needed.

```bash
docker exec -it pen /bin/bash
```

## Prepare environment

Run scripts the first time the install a selection of tools

```bash
cd /home/workspace
./scripts/prepare.sh
./scripts/kali.sh
```

Run a VPN inside the container. For TryHAckMe exercises for instance!
*_Note_:* A folder secrets/vpn is expected with the VPN configuration file .ovpn

```bash
./scripts/vpn
```

## To fix

Version of openVPN 2.6 is deprecated. Run first ./vpn.sh before install other
things. To be fixed using apropriate sources.