#!/usr/bin/env bash
#
#
# Gestion de Usuarios - 
#
# Tercer Entrega - Proyecto Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.

## ------------------------------- VARIABLES -------------------------------- #


	ARCHIVO_LISTA_DE_SERVICIOS="litaDeUsuarios.txt"
	ALTA="altaUsuario.sh"

	DIA=`date +"%d/%m/%Y"`
	HORA=`date +"%H:%M"`

	SEP=":"

    # ---------------------------VALIDACIONES --------------------------------- #
	

    if [ $(whoami) != "root" ]; then #Comando whoami, usuario actual que esta logueado en el sistema e inicio el bash
		echo "Tienes que ser root para ejecutar este script"
		echo "Ejecuta "sudo su" usuario y contraseñra para ser root"
		exit 1
    fi

	#CAMBIA LOS PERMISOS A TODOS LOS BASH PARA PODER EDITAR, EJECUTAR, LEER.
	find . -type f -exec chmod 777 {} \;

    if [ ! -e "$HISTORIAL" ]; then

    	touch historial.txt

    fi

    
#MENU--------------------------------------------------------------------------- #

    clear

    echo ""

	echo -e "#########################################################"
	echo -e "#                                                       #"
	echo -e "#                Hospital Vida Sana                     #"
	echo -e "#           Admin Sys v 1.0 by CDS Solutions            #"
	echo -e "#                                                       #"
	echo -e "#########################################################"

	echo "****Menu ABM****"

    echo -e "\t1)  Alta de usuario"

	echo -e "\t2)  Baja de usuario"

    echo -e "\t3)  Menu modificiacion de Usuario"

	echo -e "\t4)  Menu Administrar Grupos"

	echo -e "\t5)  Listar Grupos"

	echo -e "\t6)  Listar Usuarios"

	echo -e "\t7)  Menu LOG"

	echo -e "\tQ)  Salir"

	echo ""

	echo -e "\t Digite una opcion: "

	read OP

	case "$OP" in

			1)
            
			#Redirecciona al bash de ver de Usuario
			./crearUsuario.sh
					;;

			2)
            
			#Redirecciona al bash de crear Usuario
			./borrarUsuario.sh
					;;
			3)
            
			#Redirecciona al bash de borrar usuario
			./menuModificacionUsuario.sh
					;;

			4)
            
			#Redirecciona al bash de modificar usuario
			./menuAdministrarGrupos.sh
					;;
            5)
           
			#Redirecciona al bash de ver grupos
			./verGrupos.sh
					;;
            6)
            
			#Redirecciona al bash de Crear grupos
			./listarUsuarios.sh
					;;
			
			7)
            
			#Redirecciona al bash menulogs
			./menuLogs.sh
					;;


			q|Q) exit     ;;

			*) echo -e "\t Opcion inválida!"

			

	esac


    