#!/bin/bash
# DiwaIT Wake On Lan AutoScript
# Instalacion + puesta a punto + cronjob

echo "Cargando... espere"
ping localhost -c 2 >>nul
clear
echo   " "
echo   "Iniciando generador de Script 1.0b DiwaIT"
echo   " "
ping localhost -c 2 >>nul
echo "Actualizando APT e Instalando WakeOnLan..."
echo " "
sudo apt update
echo " "
ping localhost -c 2 >>nul
clear
sudo apt install -y wakeonlan
ping localhost -c 2 >>nul
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
ping localhost -c 10 >>nul
clear
echo " "
echo -e "Escribi la IP de la maquina a despertar y apreta enter: "
read -a laip
ping localhost -c 3 >>nul
clear
echo "La ip escrita es: $laip "
ping localhost -c 3 >>nul
echo " "
echo -e "Escribi el puerto UDP donde caera el paquete magico y apreta enter: "
read -a elpuerto
ping localhost -c 3 >>nul
clear
echo "El puerto es: $elpuerto "
ping localhost -c 3 >>nul
echo " "
echo -e "Escribi la MAC: "
read -a lamac
ping localhost -c 3 >>nul
clear
echo "La MAC escrita es: $lamac "
ping localhost -c 3 >>nul
clear
echo " La config quedo asi: "
echo "IP   $laip  en el puerto  $elpuerto    y con la MAC    $lamac"
ping localhost -c 3 >>nul
clear
echo " "
echo "Generando estructura del nuevo Script... Espere por favor..."
echo " "
echo "#!/bin/bash">>wol.sh
echo "# DiwaIT Wake On Lan AutoScript">>wol.sh
echo "wakeonlan -i $laip -p $elpuerto $lamac">>wol.sh
echo "wakeonlan -i $laip -p $elpuerto $lamac">>wol.sh
echo "wakeonlan -i $laip -p $elpuerto $lamac">>wol.sh
echo "wakeonlan -i $laip -p $elpuerto $lamac">>wol.sh
echo "wakeonlan -i $laip -p $elpuerto $lamac">>wol.sh
echo "wakeonlan -i $laip -p $elpuerto $lamac">>wol.sh
echo "wakeonlan -i $laip -p $elpuerto $lamac">>wol.sh
echo "wakeonlan -i $laip -p $elpuerto $lamac">>wol.sh
echo "wakeonlan -i $laip -p $elpuerto $lamac">>wol.sh
echo "wakeonlan -i $laip -p $elpuerto $lamac">>wol.sh
echo "exit 0">>wol.sh
sudo chmod 777 wol.sh >nul
ping localhost -c 3 >>nul
clear
echo " ARCHIVO wol.sh CREADO CON EXITO!! "
echo " "
echo "Se mostrara en pantalla el mismo durante 4 segundos y luego crearemos la tarea programada..."
echo " "
ping localhost -c 3 >>nul
clear
echo " "
echo "    WOL.SH   "
echo " "
cat wol.sh
ping localhost -c 7 >>nul
clear
echo "Listo, ahora la tarea programada..."
ping localhost -c 3 >>nul
clear
echo " "
echo "Vamos a generar la tarea programada, cada 2 minutos envia 10 paquetes magicos"
echo " "
echo " "
echo " "
echo " "
echo " "
echo "Generando opciones... espere..."
ping localhost -c 3 >>nul
clear
echo -e "A que hora (sin minutos) vamos a ejecutar la tarea:  "
read -a lahora
echo " "
echo "La hora ingresada es: $lahora"
ping localhost -c 3 >>nul
clear
echo -e "Escribi el path donde estas trabajando sin la / final:  "
read -a camino
echo " "
echo "El Path ingresado es: $camino"
ping localhost -c 3 >>nul
clear
touch 111temp
echo "*/2 $lahora * * * $camino/./wol.sh ">>111temp
sudo rm /var/spool/cron/crontabs/root
sudo crontab -u root 111temp
echo "Asi quedo el crontab:"
echo " "
sudo cat /var/spool/cron/crontabs/root
echo " "
ping localhost -c 3 >>nul
clear
echo "Refrescando CRON... "
ping localhost -c 3 >>nul
sudo service cron stop
sudo service cron force-reload
sudo service cron start
clear
sudo service cron status
ping localhost -c 3 >>nul
clear
echo " "
echo " "
echo " Sistema Listo para WOL!"
echo " "
echo " "
ping localhost -c 4 >>nul
sudo rm nul
sudo rm 111temp
exit 0
