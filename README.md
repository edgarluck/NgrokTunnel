# NgrokTunnel
NgrokTunnel es una herramienta diseñada para simplificar la instalación de Ngrok en sistemas Linux, garantizando un proceso automatizado y sin errores.

![ngrok-script-home](https://user-images.githubusercontent.com/76820660/156478298-99afce2a-d0bb-47dc-aa0f-f5060a88ff5a.png)

# Error Solucionado

Para los que presentan el siguiente error , como en las imágenes :

![error 1](https://github.com/edgarluck/NgrokTunnel/blob/main/img/Screenshot_20220527-203412.png)

![error 2](https://github.com/edgarluck/NgrokTunnel/blob/main/img/Screenshot_20220527-203435.png)

Instala esto y ejecuta:

$ pkg install proot -y

$ pkg install resolv-conf -y

$ termux-chroot ngrok tcp puerto

En puerto agregas tu número y en el tcp , lo puedes cambiar también , depende de usted.

Listo ;)

# Instalación en Linux 

$ sudo apt-get update

$ sudo apt-get upgrade

$ sudo apt-get install git -y

$ sudo apt-get install wget -y 

$ cd $HOME

$ git clone https://github.com/edgarluck/NgrokTunnel.git

$ cd NgrokTunnel

$ chmod +x install.sh

$ sudo bash install.sh

# Instalación en Termux

$ apt update && apt upgrade -y

$ pkg install git -y

$ pkg install wget -y

$ cd $HOME

$ git clone https://github.com/edgarluck/NgrokTunnel.git

$ cd NgrokTunnel

$ chmod +x install.sh

$ bash install.sh

# Si sucede algun error con la herramienta puede notificar en el grupo:

Telegram : https://t.me/Linux_Informatic

WhatsApp : https://chat.whatsapp.com/H6InPiy9OJA1m4dSwGY4V1
