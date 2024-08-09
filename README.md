# spoofDPI to router
Скрипт установки [spoofDPI](https://github.com/xvzc/SpoofDPI) на роутер, с установленным репозитарием [Entware](https://github.com/Entware/Entware), для обхода блокировки youtube в России

# Установка:
Необходимо подключить репозитарй [Entware](https://github.com/Entware/Entware) и установить из него пакеты dtach и curl
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
```
Настройте proxy в браузере, укажите порт из конфигурационного файла
/opt/etc/spoofDPI/spoofDPI.conf
и адрес роутера
