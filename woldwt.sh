#!/bin/bash

echo "Cargando... espere"
ping localhost -c 4 >>nul
# DiwaIT Wake On Lan AutoScript
# Instalacion + puesta a punto + cronjob

clear
echo   " "
echo   "Iniciando generador de Script 1.0a DiwaIT"
echo   " "
ping localhost -c 4 >>nul
echo "Actualizando APT e Instalando WakeOnLan..."
echo " "
#sudo apt update
echo " "
ping localhost -c 4 >>nul
clear
#sudo apt install -y wakeonlan
clear
echo " "
echo "Para generar el AuroScript, primero tenes que saber"
echo " "
echo "la MAC ADDRESS de la pc a despertar..."
echo " "
echo "Tambien seria recomendado que sepas la direccion IP de la maquina"
echo " "
echo "Y por ultimo, podes elegir el puerto udp donde se"
echo " " 
echo "envia el paquete magico"
echo " "
echo " "
echo " "
echo " "
echo "Generando menu... espere..."
ping localhost -c 11 >>nul

clear
echo " "
echo -e "Escribi la IP: "
read -a laip
ping localhost -c 4 >>nul
clear
echo "La ip escrita es: $laip "
ping localhost -c 4 >>nul

echo " "
echo -e "Escribi el puerto: "
read -a elpuerto
ping localhost -c 4 >>nul
clear
echo "El puerto es: $elpuerto "
ping localhost -c 4 >>nul
echo " "
echo -e "Escribi la MAC: "
read -a lamac
ping localhost -c 4 >>nul
clear
echo "La ip escrita es: $lamac "
ping localhost -c 4 >>nul
clear
echo " La config quedo asi: "
echo "IP   $laip  en el puerto  $elpuerto    y con la MAC    $lamac"
rm nul
ping localhost -c 4 >>nul
clear
echo "Listo"
