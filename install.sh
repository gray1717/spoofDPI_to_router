#!/bin/bash

cd /opt/tmp
curl "https://api.github.com/repos/xvzc/SpoofDPI/releases/latest" |
    grep '"tag_name":' |
    sed -E 's/.*"([^"]+)".*/\1/' |
    xargs -I {} curl -OL "https://github.com/xvzc/SpoofDPI/releases/download/"\{\}"/spoof-dpi-${1}.tar.gz"

tar -xzvf /opt/tmp/spoof-dpi-${1}.tar.gz && \
    rm -rf /opt/tmp/spoof-dpi-${1}.tar.gz && \
    mv /opt/tmp/spoof-dpi /opt/bin

if [ $? -ne 0 ]; then
    echo "Error. exiting now"
    exit
fi

curl -L "https://raw.githubusercontent.com/gray1717/spoofDPI_to_router/main/opt/etc/init.d/S8080spoofDPI" -o /opt/etc/init.d/S8080spoofDPI
chmod +x /opt/etc/init.d/S8080spoofDPI

curl -L "https://raw.githubusercontent.com/gray1717/spoofDPI_to_router/main/opt/etc/spoofDPI/spoofDPI.conf" -o /opt/etc/spoofDPI/spoofDPI.conf

echo ""
echo "Successfully installed SpoofDPI."
