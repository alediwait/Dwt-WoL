#!/bin/bash
# DiwaIT Wake On Lan AutoScript
# Instalacion + puesta a punto + cronjob

echo "Cargando... espere"
ping localhost -c 4 >>nul
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
echo "Generando opciones... espere..."
ping localhost -c 11 >>nul
clear
echo " "
echo -e "Escribi la IP de la maquina a despertar y apreta enter: "
read -a laip
ping localhost -c 2 >>nul
clear
echo "La ip escrita es: $laip "
ping localhost -c 2 >>nul
echo " "
echo -e "Escribi el puerto UDP donde caera el paquete magico y apreta enter: "
read -a elpuerto
ping localhost -c 2 >>nul
clear
echo "El puerto es: $elpuerto "
ping localhost -c 2 >>nul
echo " "
echo -e "Escribi la MAC: "
read -a lamac
ping localhost -c 2 >>nul
clear
echo "La ip escrita es: $lamac "
ping localhost -c 2 >>nul
clear
echo " La config quedo asi: "
echo "IP   $laip  en el puerto  $elpuerto    y con la MAC    $lamac"
ping localhost -c 2 >>nul
clear
echo " "
echo "Generando estructura del nuevo Script... Espere por favor..."
echo " "
echo "#!/bin/bash">>wol.sh
echo "# DiwaIT Wake On Lan AutoScript">>wol.sh
echo "wakeonlan -i $laip -p $elpuerto $lamac">>wol.sh
echo "exit 0">>wol.sh
sudo chmod 777 wol.sh >nul
ping localhost -c 2 >>nul
clear
echo " ARCHIVO wol.sh CREADO CON EXITO!! "
echo " "
echo "Se mostrara en pantalla el mismo durante 4 segundos y luego el programa finalizara"
echo " "
ping localhost -c 2 >>nul
clear
echo " "
echo "    WOL.SH   "
echo " "
cat wol.sh
ping localhost -c 4 >>nul
clear
rm nul
echo "Listo"
exit 0
