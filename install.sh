#!/bin/bash

case `uname -m`  in
    aarch64)
        arch="linux-arm64"
    ;;
    mips)
        arch="linux-mips"
    ;;
    mipsel)
        arch="linux-mipsle"
    ;;
    *)
        echo $(uname -m)" not suppoted"
        exit
    ;;
esac

cd /opt/tmp
curl "https://api.github.com/repos/xvzc/SpoofDPI/releases/latest" |
    grep '"tag_name":' |
    sed -E 's/.*"([^"]+)".*/\1/' |
    xargs -I {} curl -OL "https://github.com/xvzc/SpoofDPI/releases/download/"\{\}"/spoofdpi-${arch}.tar.gz"

tar -xzvf /opt/tmp/spoofdpi-${arch}.tar.gz && \
    rm -rf /opt/tmp/spoofdpi-${arch}.tar.gz && \
    mv /opt/tmp/spoofdpi /opt/bin

if [ $? -ne 0 ]; then
    echo "Error. exiting now"
    exit
fi

curl -L "https://raw.githubusercontent.com/gray1717/spoofDPI_to_router/main/opt/etc/init.d/S8080spoofDPI" -o /opt/etc/init.d/S8080spoofDPI
chmod +x /opt/etc/init.d/S8080spoofDPI

mkdir /opt/etc/spoofDPI
curl -L "https://raw.githubusercontent.com/gray1717/spoofDPI_to_router/main/opt/etc/spoofDPI/spoofDPI.conf" -o /opt/etc/spoofDPI/spoofDPI.conf

echo ""
echo "Successfully installed SpoofDPI."
