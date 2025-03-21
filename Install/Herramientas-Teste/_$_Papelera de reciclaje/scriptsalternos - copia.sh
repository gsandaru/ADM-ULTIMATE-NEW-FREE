#!/bin/bash
declare -A cor=( [0]="\033[1;37m" [1]="\033[1;34m" [2]="\033[1;31m" [3]="\033[1;33m" [4]="\033[1;32m" )
barra="\033[0m\e[34m======================================================\033[1;37m"
SCPdir="/etc/newadm" && [[ ! -d ${SCPdir} ]] && exit 1
SCPfrm="/etc/ger-frm" && [[ ! -d ${SCPfrm} ]] && exit
SCPinst="/etc/ger-inst" && [[ ! -d ${SCPinst} ]] && exit
SCPidioma="${SCPdir}/idioma" && [[ ! -e ${SCPidioma} ]] && touch ${SCPidioma}

limpiar () {
rm -rf /bin/C-SSR.sh > /dev/null 2>&1
rm -rf /bin/Shadowsocks-libev.sh > /dev/null 2>&1
rm -rf /bin/Shadowsocks-R.sh > /dev/null 2>&1
rm -rf /bin/shadowsocks.sh > /dev/null 2>&1
rm -rf /bin/v2ray.sh > /dev/null 2>&1
rm -rf /bin/vdoray.sh > /dev/null 2>&1
rm -rf /bin/v2ray84.sh > /dev/null 2>&1
rm -rf /bin/conexao.sh > /dev/null 2>&1
rm -rf /bin/tcp.sh > /dev/null 2>&1
rm -rf /bin/blockBT.sh > /dev/null 2>&1
}
limpiar

fun_scriptsalternos () {
clear
clear
while true; do
msg -bar
echo -e "\033[1;33m$(fun_trans "TESTE SCRIPTS ALTERNOS")"
msg -bar
echo -e " \033[1;31m[\033[1;33m!\033[1;31m]\033[1;33m$(fun_trans "FUNCAO BETA ULTILIZE POR SUA CONTA EM RISCO")"
msg -bar
echo -e "\033[1;32m[0] > \033[1;37m$(fun_trans "VOLTAR")"
msg -bar
echo -e "\033[1;32m[1] > \033[1;36m$(fun_trans "ADMINISTRAR CUENTAS SS/SSRR")"
echo -e "\033[1;32m[2] > \033[1;36m$(fun_trans "SHADOWSOCKS-LIBEV")"
echo -e "\033[1;32m[3] > \033[1;36m$(fun_trans "SHADOWSOCKS-R")"
echo -e "\033[1;32m[4] > \033[1;36m$(fun_trans "SHADOWSOCKS-NORMAL")"
msg -bar
echo -e "\033[1;32m[5] > \033[1;36m$(fun_trans "V2ray VPS-MX 8.4")"
msg -bar
echo -e "\033[1;32m[6] > \033[1;36m$(fun_trans "Menu SSHPlus Conexao ")"
msg -bar
echo -e "\033[1;32m[7] > \033[1;36m$(fun_trans "TCP ACELERACION") (BBR/PLUS)"
msg -bar
while [[ ${opx} != @(0|[1-7]) ]]; do
echo -ne "[1-7]: \033[1;37m" && read opx
tput cuu1 && tput dl1
done
case $opx in
0) 
exit;;
1) wget -O /bin/C-SSR.sh https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/ADM-ULTIMATE-NEW-FREE/master/Install/Herramientas/C-SSR.sh > /dev/null 2>&1; chmod +x /bin/C-SSR.sh; C-SSR.sh
exit
;;
2) wget -O /bin/Shadowsocks-libev.sh https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/ADM-ULTIMATE-NEW-FREE/master/Install/Herramientas/Shadowsocks-libev.sh > /dev/null 2>&1; chmod +x /bin/Shadowsocks-libev.sh; Shadowsocks-libev.sh
exit
;;
3) wget -O /bin/Shadowsocks-R.sh https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/ADM-ULTIMATE-NEW-FREE/master/Install/Herramientas/Shadowsocks-R.sh > /dev/null 2>&1; chmod +x /bin/Shadowsocks-R.sh; Shadowsocks-R.sh
exit
;;
4) wget -O /bin/shadowsocks.sh https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/ADM-ULTIMATE-NEW-FREE/master/Install/Herramientas/shadowsocks.sh > /dev/null 2>&1; chmod +x /bin/shadowsocks.sh; shadowsocks.sh
exit
;;
5) wget -O /etc/ger-inst/v2ray.sh https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/ADM-ULTIMATE-NEW-FREE/master/Install/Herramientas/v2ray84.sh > /dev/null 2>&1; chmod +x /etc/ger-inst/v2ray.sh; /etc/ger-inst/v2ray.sh
exit
;;
6) wget -O /bin/conexao.sh https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/ADM-ULTIMATE-NEW-FREE/master/Install/Herramientas/conexao.sh > /dev/null 2>&1; chmod +x /bin/conexao.sh; conexao.sh
exit
;;  
7) wget -O /bin/tcp.sh https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/ADM-ULTIMATE-NEW-FREE/master/Install/Herramientas/tcp.sh > /dev/null 2>&1; chmod 777 /bin/tcp.sh; tcp.sh
exit
;;
esac
done
}
fun_scriptsalternos