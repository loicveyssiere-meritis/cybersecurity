# Cybersecurity personal content

## Setup

```bash
docker run --name pen -it -v $PWD/workspace:/home/me --cap-add=NET_ADMIN --privileged debian
```

```bash
docker exec -it pen /bin/bash
```