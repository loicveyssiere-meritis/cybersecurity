$SUDO apt-get update

$SUDO apt-get install -y gnupg software-properties-common

apt-add-repository -y 'deb http://http.kali.org/kali kali-rolling main non-free contrib'
#apt-add-repository -y 'deb-src http://http.kali.org/kali kali-rolling main non-free contrib'

$SUDO apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys ED444FF07D8D0BF6

$SUDO apt-get update

# Exploit
$SUDO apt-get install -y hydra wordlists #kali-tools-top10

# Install enum4linux -----------------------------------------------------------
VERSION="0.8.9"
URL="https://labs.portcullis.co.uk/download/enum4linux-$VERSION.tar.gz"

if [ ! -f $WORKSPACE/tools/enum4linux-$VERSION.tar.gz ]; then
    echo "Start enum4linux install"
    mkdir -p $WORKSPACE/tools
    wget -O $WORKSPACE/tools/enum4linux-$VERSION.tar.gz $URL
    tar -xvf $WORKSPACE/tools/enum4linux-$VERSION.tar.gz  -C tools/ 
else
    echo "Skip enum4linux install"
fi
