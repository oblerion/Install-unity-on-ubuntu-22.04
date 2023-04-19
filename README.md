# Install-unity-on-ubuntu-22.04
## Introduction

### There are two problems in the Unity Hub installation tutorial (Installing the Unity Hub on Linux):
1. Ubuntu 22.04 uses OpenSSL 3 while Unity Editors use OpenSSL 1.0 (Workaround for libssl issue on Ubuntu 22.04)
2. The second instruction uses the apt-key command, which is deprecated on Ubuntu 22.04 (apt-key Is Deprecated. How To Add OpenPGP Repository Signing Keys Without It). 

Downloading OpenSSL 1.0:

    Download libssl1.0.0_1.0.2n-1ubuntu5.11_amd64.deb
    http://archive.ubuntu.com/ubuntu/pool/main/o/openssl1.0/. 

Download shell for install

    Download unityhub.sh

.deb and .sh need to be in same directory
## Install
Launch unityhub.sh for install :

```sh
sudo chmod +x unityhub.sh
sudo ./unityhub.sh
```

(update 19/4/23 from https://dev.to/brenomfviana/installing-unity-hub-on-ubuntu-42l0 )

- tutorial make by Breno Viana
- update and unityhub.sh make by oblerion
