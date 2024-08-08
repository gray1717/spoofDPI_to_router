Скрипт установки <a href="https://github.com/xvzc/SpoofDPI">spoofDPI</a> на роутер с установленным репозитарием <a href="https://github.com/Entware/Entware">Entware</a>, для обхода блокировки youtube в России

Установка:
dtuch
<code>opkg install dtach</code>
У меня роутер Asus RT-AC86, архитекрура arm-64, для него подходит команда<br>
<code>curl https://raw.githubusercontent.com/gray1717/spoofDPI_to_router/main/install.sh | bash -s linux-arm64</code>
запустите spoofDPI c соответствующим адресом вашей подсети
<code>dtach -n /tmp/spoofDPI spoof-dpi -addr 192.168.1.0/8</code>
