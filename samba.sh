##!/bin/bash

##########
#
# Creado por Huezo
# https://huezohuezo1990.wordpress.com/
#
#
#########


echo "¿Qué quieres hacer?"
echo " "
echo " ------------------------------------------------------ "
echo " "
echo "1 - Instalar Samba Ubuntu , Debian y Derivados"
echo "2 - Configurar Samba Todos los GNU/Linux en /home/$USER/compartido "
echo "y en en /home/compartidos"

#echo "3 - Configurar Samba Todos los GNU/Linux en /home/compartido"

echo " "
echo "------------------------------------------------------ "
echo " "

read huezo

if [ $huezo = 1 ];
then

echo " "

sudo apt-get update

sudo apt-get install  samba   

sudo apt-get install samba-common

sudo apt-get install python-glade2

sudo apt-get install system-config-samba


exit 0



elif [ $huezo = 2 ];
then

echo " Ingrese la Netbios"

read netbios


echo " \\$netbios\compartido"

echo "smb://$netbios/compartido"

echo "Creando Carpeta compartido en /home/$USER/compartido"

sudo mkdir -p /home/$USER/compartido

echo "permiso a la carpeta"

sudo chmod 777 -R /home/$USER/compartido

sudo chmod 777 /etc/samba/smb.conf

echo " 
[global]
workgroup = WORKGROUP
server string = Samba Server %v
netbios name = $netbios
security = user
map to guest = bad user
dns proxy = no


[compartido]
path = /home/$USER/compartido
browsable =yes
writable = yes
guest ok = yes
read only = no

" >> /etc/samba/smb.conf


echo " "

echo " Entrar en GNU/Linux"

echo " smb://$netbios/compartido"


echo " smb://IP/compartido"

echo " "

echo " Entrar en Windows "

echo " \\$netbios\compartido"

echo " \\IP\compartido"


echo " "
echo " ###################"
echo " "
echo " Reiniciar........."
echo " "
echo " ###################"
echo " "

sudo chmod 644 /etc/samba/smb.conf

sudo mkdir -p /home/compartidos

echo "permiso a la carpeta"

sudo chmod 777 -R /home/compartidos

sudo chmod 777 /etc/samba/smb.conf

echo " 
[global]
workgroup = WORKGROUP
server string = Samba Server %v
netbios name = $netbios
security = user
map to guest = bad user
dns proxy = no


[compartidos]
path = /home/compartidos
browsable =yes
writable = yes
guest ok = yes
read only = no

" >> /etc/samba/smb.conf


echo " "

echo " Entrar en GNU/Linux"

echo " smb://$netbios/compartidos"

echo " smb://ip/compartidos"

echo " "

echo " Entrar en Windows "

echo " \\$netbios\compartidos"


echo " \\IP\compartidos"

echo " "
echo " ###################"
echo " "
echo " Reiniciar........."
echo " "
echo " ###################"
echo " "

sudo chmod 644 /etc/samba/smb.conf

exit 0

#elif [ $huezo = 3 ];
#then

#echo " Ingrese la Netbios"

#read netbios


#echo " \\$netbios\compartidos"

#echo "smb://$netbios/compartidos"

#echo "Creando Carpeta compartido en /home/compartidos"

#sudo mkdir -p /home/compartidos

#echo "permiso a la carpeta"

#sudo chmod 777 -R /home/compartidos

#sudo chmod 777 /etc/samba/smb.conf

#echo " 
#[global]
#workgroup = WORKGROUP
#server string = Samba Server %v
#netbios name = $netbios
#security = user
#map to guest = bad user
#dns proxy = no


#[compartidos]
#path = /home/compartidos
#browsable =yes
#writable = yes
#guest ok = yes
#read only = no

#" >> /etc/samba/smb.conf


#echo " "

#echo " Entrar en GNU/Linux"

#echo " smb://$netbios/compartidos"

#echo " smb://ip/compartidos"

#echo " "

#echo " Entrar en Windows "

#echo " \\$netbios\compartidos"


#echo " \\IP\compartidos"

#echo " "
#echo " ###################"
#echo " "
#echo " Reiniciar........."
#echo " "
#echo " ###################"
#echo " "

#sudo chmod 644 /etc/samba/smb.conf

#exit 0


fi
exit 0

exit


##########
#
# Creado por Huezo
# https://huezohuezo1990.wordpress.com/
#
#
#########


#referencias para ampliar ideas:
#https://help.ubuntu.com/lts/serverguide/samba.html
#https://wiki.debian.org/SambaServerSimple
