#!/bin/bash

logout="       Fermer la session"
restart="       Redémarrer l'ordinateur"
stop="       Arrêter l'ordinateur"

answer=$(zenity \
	--width=200 --height=180 \
	--list \
	--title="Fin de session" \
	--text "Veuillez choisir l'une des actions suivantes." \
	--column "Actions" \
	--hide-header \
	"$logout" \
  	"$restart" \
  	"$stop" 
)

case $answer in

	$logout)
	swaymsg exit
	;;

	$restart)
	systemctl reboot
	;;

	$stop)
	systemctl poweroff
	;;

esac
