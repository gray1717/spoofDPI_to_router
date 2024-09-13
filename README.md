# spoofDPI to router
Скрипт установки [spoofDPI](https://github.com/xvzc/SpoofDPI) на роутер, с установленным репозитарием [Entware](https://github.com/Entware/Entware), для обхода замедления youtube в России

# Установка:
>Проверьте ваше устройство ````uname -m````, должно быть что-то из этого: ````aarch64````, ````mips````, ````mipsel````

Необходимо подключить репозитарй [Entware](https://github.com/Entware/Entware) и установить из него пакеты dtach и curl
````sh
opkg install dtach curl
````
spoofDPI
````sh
curl -L https://raw.githubusercontent.com/gray1717/spoofDPI_to_router/main/install.sh | sh
````
проверьте настройки, по необходимости измените прослушиваемый адрес и порт
````
/opt/etc/spoofDPI/spoofDPI.conf
````
запустите spoofDPI
````sh
sh /opt/etc/init.d/S8080spoofDPI start
````
Настройте proxy в браузере, укажите порт из конфигурационного файла ````/opt/etc/spoofDPI/spoofDPI.conf```` и адрес роутера

# Сборка пакета *.ipk
> У меня на роутере скрипт https://github.com/Entware/Entware/blob/master/scripts/ipkg-build выдает ошибку: ````line 13: command not found````
>
> Проверьте ваш busybox ````busybox --list | grep command````, если такая команда поддерживается, можно пробовать собирать на роутере
>
> Из под установленного, на роутер, Debian сборка проходит успешно, либо собирайте на компьютере, указав архитектуру роутера

под архитектуру устройства, на котором производится сборка
````sh
curl -L https://raw.githubusercontent.com/gray1717/spoofDPI_to_router/main/ipkg-build | sh
````
или под определенную архитектуру, из этого: ````aarch64````, ````mips````, ````mipsel````
````sh
curl -L https://raw.githubusercontent.com/gray1717/spoofDPI_to_router/main/ipkg-build | sh -s aarch64
````
установка как обычно
````sh
opkg install spoof-dpi*.ipk
````
