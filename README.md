Скрипт установки [spoofDPI](https://github.com/xvzc/SpoofDPI) на роутер, с установленным репозитарием [Entware](https://github.com/Entware/Entware), для обхода блокировки youtube в России

# Установка:

dtach и curl
````sh
opkg install dtach curl
````
У меня роутер Asus RT-AC86U, архитекрура arm-64, для него подходит команда<br>
````sh
curl https://raw.githubusercontent.com/gray1717/spoofDPI_to_router/main/install.sh | bash -s linux-arm64
````
проверьте настройки, по необходимости измените прослушиваемый адрес и порт
````
/opt/etc/spoofDPI/spoofDPI.conf
````
запустите spoofDPI
````sh
sh /opt/etc/init.d/S8080spoofDPI start
````
по умолчанию будет слушать порт 8080, пропишите его в настройках proxy в браузере и адрес вашего роутера
