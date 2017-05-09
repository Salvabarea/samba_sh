
# SCRIPT para Configurar Samba 

¿ que hace el script?
configura samba , crea dos carpetas con permisos de acceso a invitado para compartir
lo que desees en esas dos carpetas , las dos carpetas estan la primera en $HOME/compartido 
la segunda en /home/compartidos.
el script puedes adapartarlo a tus necesidades 


## Permiso:

```
sudo chmod +x samba.sh
```

## Ejecutar:

```
./samba.sh
```




[samba]:https://raw.githubusercontent.com/huezo/samba_sh/master/samba.png

![samba][samba]


# Descargar 
## [https://github.com/huezo/samba_sh/releases](https://github.com/huezo/samba_sh/releases)


# video

## [https://youtu.be/k6ekSAOBm-E](https://youtu.be/k6ekSAOBm-E)





## Nota 
Agregar el usuario al grupo `nogroup`

```
sudo usermod -a -G nogroup $USER
```
--------------------------------
```
groups $USER
```

## netbios 
¿ Nombre de la Netbios ? 


[netbios]:https://raw.githubusercontent.com/huezo/samba_sh/master/netbios2.png

![netbios][netbios]

Nos permitira esto , en la pestaña de red sera visible el servidor samba
con las Carpetas Compartidas

[netbios1]:https://raw.githubusercontent.com/huezo/samba_sh/master/netbio.png

![netbios1][netbios1]


[netbios2]:https://raw.githubusercontent.com/huezo/samba_sh/master/netbio1.png

![netbios2][netbios2]

_____________________________________________________________________________

[https://huezo.github.io/samba_sh/](https://huezo.github.io/samba_sh/)

____________________________________________________________________________


# blog

# [https://huezohuezo1990.wordpress.com/](https://huezohuezo1990.wordpress.com/)



## referencias para ampliar ideas:
https://help.ubuntu.com/lts/serverguide/samba.html


https://wiki.debian.org/SambaServerSimple

