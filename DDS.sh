#!/bin/bash
normal=$(echo -en '\033[0m')
blanco=$(echo -en '\039[0m')
rojo=$(echo -en '\033[00;31m')
verde3='echo -e \e[0;32m'
verde2='echo -e \e[0;32m'
azul2='echo -e \e[0;34m'
purpura=$(echo -en '\033[1;35m')
verde=$(echo -en '\033[00;32m')
amarillo=$(echo -en '\033[00;33m')
azul=$(echo -en '\033[00;34m')
azul3=$(echo -en '\033[1;34m')
cain=$(echo -en '\033[00;36m')
cain2=$(echo -en '\033[01;36m')
blanco=$(echo -en '\033[01;37m')
cain3='echo -e \e[1;36m' 
banner=' 
        ..........................   
        dhhddddddddddddddddddddddddhs- 
oooooosdysssssssssssssssssssssssyyyyh+:
NNN  mNNyosssssssssssssssssssssssssssyss
NNN  mmmyoooo ____   ____   ____  oooooss
NNNmdmmmyoooo(  _ \ (  _ \ /  __)ooooooss
NNN  mmmyoooo )(_) ) )(_) )\__  \ooooooss
mmm  mmms+ooo(____/.(____/.(____/cript+++
mmmhsddds++++John-Wick V0.1++++++++++++
        b++++++++++++++++++++++++++++'
clear
echo ${verde}[*] $(echo ${cain2})$(echo -e "\e[4mComprobando dependencias: ") ; sleep 1
echo ""
	echo ${azul}[*] Dataset Definition ▼
	if ! hash dd 2>/dev/null; then
		echo ${rojo}No instalado
		echo ${rojo}Instale la dependencia para usar el script DDS
		exit 1
	else
		echo ${verde}   »»  OK!
	fi
	sleep 1

	echo ${azul}[*] PV ▼
	if ! hash pv 2>/dev/null; then
		echo ${rojo}No instalado
		echo ${rojo}Instale la dependencia para usar el script DDS
		exit 1
	else
		echo ${verde}   »»  OK!
	fi
	sleep 1

	echo ${azul}[*] lsblk ▼
	if ! hash lsblk 2>/dev/null; then
		echo ${rojo}No instalado
		echo ${rojo}Instale la dependencia para usar el script DDS
		exit 1
	else
		echo ${verde}   »»  OK!
	fi
	sleep 1

    echo ${azul}[*] mkdosfs ▼
	if ! hash mkdosfs 2>/dev/null; then
		echo ${rojo}No instalado
		echo ${rojo}Instale la dependencia para usar el script DDS
		exit 1
	else
		echo ${verde}   »»  OK!
	fi
	sleep 1
clear
$cain3 "$banner" 
echo ${verde}[*] $(echo ${azul}Crear un USB Boot/Live con D.D)
echo ${azul}[*] $(echo ${verde}Detectando discos disponibles:)
echo ""
echo ${verde}NOMBRE $(echo ${normal}) $(echo ${normal}) $(echo ${normal}) $(echo ${normal}) $(echo ${normal}) $(echo ${cain2}MAJ:MIN) $(echo ${normal})  $(echo ${normal}) $(echo ${amarillo}TAMAÑO) $(echo ${normal}) $(echo ${rojo}RO) $(echo ${purpura}TIPO) $(echo ${normal})
lsblk  -p | egrep "disk"
echo ""
read -p " ► Introduzca el mombre del disk: " disk
echo ${azul}[*] $(echo ${verde}Desmontando $disk) $(echo ${normal})
sudo umount $disk 2> /dev/null ; sleep 2
echo ${azul}[*] $(echo ${verde}Formateando $disk a Fat32) $(echo ${normal})
mkdosfs -F 32 -I $disk 1> /dev/null
echo ""
echo ${azul}[*] $(echo ${verde}Detectanto iso e img  en esta ubicacion:)
echo ""
echo ${verde}[*]Img:$(echo ${normal}) $(ls -1 | egrep "img") 
echo ${verde}[*]Iso:$(echo ${normal}) $(ls -1 | egrep "iso")
echo ""
read -p " ► Introduzca la iso/img: " iso
echo ${azul}[*] $(echo ${verde}Se esta booteando $iso a $disk)
echo ${azul}[*] $(echo ${verde}Esto puede tardar dependiendo del tamaño de la iso y de la velocidad del ordenador. ) ; sleep 1
echo ${rojo}[*] Espere.... $(echo ${verde})
sudo dd if=$iso | pv | dd of=$disk bs=4M
clear
$cain3 "$banner"
echo ${azul}[*] $(echo ${verdee}USB Boot/Live creado correctamente..) ; sleep 1
echo ${azul}[*] $(echo ${verde}Puede reiniciar el ordenador y arrancar desde el USB booteado.)
sleep 2
echo ${azul}[*] $(echo ${rojo}Saliendo..)
exit 0 
