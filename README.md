Скрипт установки [spoofDPI](https://github.com/xvzc/SpoofDPI) на роутер, с установленным репозитарием [Entware](https://github.com/Entware/Entware), для обхода блокировки youtube в России

Установка:<br>
dtach и curl<br>
````sh
opkg install dtach curl
````
У меня роутер Asus RT-AC86U, архитекрура arm-64, для него подходит команда<br>
````sh
curl https://raw.githubusercontent.com/gray1717/spoofDPI_to_router/main/install.sh | bash -s linux-arm64
````
запустите spoofDPI c соответствующим адресом вашей подсети<br>
````sh
dtach -n /tmp/spoofDPI spoof-dpi -addr 192.168.1.0/8</code><br>
````
по умолчанию будет слушать порт 8080, пропишите его в настройках proxy в браузере и адрес вашего роутера
