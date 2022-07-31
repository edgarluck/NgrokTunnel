#!/bin/bash
#############################################
## Code by @edgarluck                      ##
## Creado : 01/03/2022                     ##
## Actualizado : 31/07/2022                ##
## GITHUB : https://github.com/edgarluck/  ##
#############################################
##################
##              ##
##   COLORES F  ##
##              ##
######################################
R='\e[1;31m' # Rojo fuerte         ###
G='\e[1;32m' # Verde Fuerte        ###
Y='\e[1;33m' # Amarillo Fuerte     ###
B='\e[1;34m' # Azul fuerte         ###
M='\e[1;35m' # Purpura o algo asi  ###
C='\e[1;36m' # Cyan color fuerte   ###
W='\e[1;37m' # Blanco Fuerte       ###
P='\e[1;35m' # Purpura             ###
Green='\e[32m' # Verde             ###
Gr='\e[5m\e[32m' # verde           ###
Gris='\e[90m' # Gris               ###
######################################
WG='\e[1;37m\e[42m'
WR='\e[1;37m\e[41m'
reset='\e[0m'

trap ctrl_c 2
function ctrl_c {
echo
echo -e $B"[+]$W Finalizado"
echo -e $B"[+]$W Code by @edgarluck"
echo -e $B"[+]$W Telegram: https://t.me/Linux_Informatic"
echo
echo 
exit
}
dependencia(){
printf "\e[1;92m"
command -v wget > /dev/null 2>&1 || { echo -e >&2 "Requiero wget. Por favor instalalo. Abortando... \e[0m"; sleep 2; exit 1; }
}

function run {
OS=$(uname -o)
echo
echo
echo -e "$G[+]${W} Detectanto SO..."
sleep 2
echo -e "$G[+]${W} Espere..."
sleep 2
if [ "${OS}" == "Android" ]; then
echo -e "$G[+]${W} SO Detectado${C} :${G} Termux ($OS)"
sleep 0.8
menu-ocp
elif [ "${OS}" == "GNU/Linux" ]; then
echo -e "$G[+]${W} SO Detectado${C} :${G} $OS"
sleep 0.8
menu-ocp
fi
}
function banner {
echo -e ${G}" _   _                 _      _____                       _ "
echo -e "| \ | | __ _ _ __ ___ | | __ |_   _|   _ _ __  _ __   ___| |"
echo -e "|  \| |/ _' | '__/ _ \| |/ /   | || | | | '_ \| '_ \ / _ \ |"
echo -e "| |\  | (_| | | | (_) |   <    | || |_| | | | | | | |  __/ |"
echo -e "|_| \_|\__, |_|  \___/|_|\_\   |_| \__,_|_| |_|_| |_|\___|_|"
echo -e "       |___/ "
echo -e "                ${WR}create by @edgarluck$reset"
echo -e "        $WG.: https://github.com/edgarluck :.$reset"

}
function ngrok-download {
echo -e "${G}[+]${W} Descargando ngrok ..."
echo -e "${G}[${W}--${G}]"
case `dpkg --print-architecture` in
aarch64)
    arquitectura="arm64" ;;
arm)
    arquitectura="arm" ;;
armhf)
    arquitectura="arm" ;;
amd64)
    arquitectura="amd64" ;;
i*86)
    arquitectura="386" ;;
x86_64)
    arquitectura="amd64" ;;
*)
    echo "$R[$Y!!$R] Arquitectura no soportada :("
esac
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-${arquitectura}.tgz -O ngrok.tgz
tar xvf ngrok.tgz
rm ngrok.tgz
}
function ngrok-install {
OS=$(uname -o)
if [ "$OS" == "Android" ]; then
chmod 777 ngrok
mv ngrok $PREFIX/bin
if [ -f $PREFIX/bin/ngrok ]; then
echo -e "$G[+]$W"
echo -e "$G[+]$W Listo"
echo -e "$G[+]$W Para usar ejecute${C} :${G} ngrok http <puerto>"
echo -e "$G[+]$W ejemplo$C :${G} ngrok http 8080"
echo -e "$G[+]$W Es necesario que vinculen su authtoken para usar ngrok."
echo -e "$G[+]$W Telegram${C} :${G} https://t.me/Linux_Informatic"
echo
echo
exit 1
fi
elif [ "$OS" == "GNU/Linux" ]; then
chmod 777 ngrok
mv ngrok /usr/local/bin
if [ -f /usr/local/bin/ngrok ]; then
echo -e "$G[+]$W"
echo -e "$G[+]$W Listo"
echo -e "$G[+]$W Para usar ejecute : ngrok http <puerto>"
echo -e "$G[+]$W ejemplo : ngrok http 8080"
echo -e "$G[+]$W Es necesario que vinculen su authtoken para usar ngrok."
echo -e "$G[+]$W Telegram : https://t.me/Linux_Informatic"
echo
echo
exit 1
fi
fi
}
function menu-ocp {
echo
echo
echo -e "       ${G}[${C} 01${G} ]${W} Descargar e instalar ngrok"
echo -e "       ${G}[${C} 02${G} ]${W} Canal de Youtube && Suscribete"
echo -e "       ${G}[${C} 03${G} ]${W} GitHub"
echo -e "       ${G}[${C} 04${G} ]${W} Grupo de Telegram"
echo -e "       ${G}[${C} 05${G} ]${W} Contacto con el desarrollador"
echo -e "       ${G}[${C} 06${G} ]${W} Salir :)"
echo
echo 
ocp
}
function ocp {
echo -e -n "$W[ ngrok-install ] > "
read -r a
case $a in
  1|01)
    ngrok-download
    ngrok-install
    ;;
  2|02)
    OS=$(uname -o)
    if [ "$OS" == "Android" ]; then
    termux-open https://youtube.com/channel/UCVCklEUJuOhydbySEbY5_eA
    ocp
    elif [ "$OS" == "GNU/Linux" ]; then
    echo -e "${G}Canal de Youtube$W =>$Y https://youtube.com/channel/UCVCklEUJuOhydbySEbY5_eA"
    fi
    ocp
    ;;
  3|03)
    OS=$(uname -o)
    if [ "$OS" == "Android" ]; then
    termux-open https://github.com/edgarluck/
    ocp
    elif [ "$OS" == "GNU/Linux" ]; then
    echo -e "${G}GIT HUB$W => ${Y}https://github.com/edgarluck/"
    fi
    ocp
    ;;
  4|04)
    OS=$(uname -o)
    if [ "$OS" == "Android" ]; then
    termux-open https://t.me/Linux_Informatic
    ocp
    elif [ "$OS" == "GNU/Linux" ]; then
    echo -e "${G}Grupo de Telegram ${W}=>$Y https://t.me/Linux_Informatic"
    fi
    ocp
    ;;
  5|05)
    echo 
	echo
	echo -e "$C=========================="
	echo -e "${G}CONTACTO DEL DESARROLLADOR"
	echo -e "$C=========================="
	echo 
	echo -e "${C}Telegram ==> https://t.me/edgarluck"
	echo -e "${G}WhatsApp ==> +51 938454671"
	echo
	echo
    ocp
    ;;
  6|06)
    echo -e "$R[$Y!!$R] SALIENDO ..."
    exit 1
    ;;
  *)
    if [[ "$a" != "" ]]; then
	echo -e "$R[${Y}!!$R] Comando invalido: ${a}"
    sleep 0.5
    ocp
    else
    ocp
    fi
	;;
esac
}
dependencia
banner
run
