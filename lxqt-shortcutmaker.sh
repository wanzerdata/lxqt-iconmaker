#!/bin/bash 
#########################################
# Generate Shortcut for lxqt"           #
# Author: Wanzerdata"                   #
# Data:  08.09.2019"		                #
#########################################

zenity  --info --title "Shortcut" --text "Follow the instructions to generate a desktop shortcut" --width 150
nome=$(zenity --title "Name" --text "Type the name of the shortcut" --entry)
zenity  --info --title "Icon" --text "Now choose the icon for the shortcut" --width 150
icon=$(zenity --title "Choose icon" --file-selection)
zenity  --info --title "Exec" --text "Now choose the executable/script for the shortcut" --width 150
exec=$(zenity --title "Choose Exec/Script" --file-selection)

#Generate file
loc="/home/$USER/Desktop/$nome.desktop"
echo "[Desktop Entry]" 	>> $loc
echo "Type=Application" >> $loc
echo "Name=$nome" 		>> $loc
echo "Icon=$icon"		>> $loc
echo "Exec='$exec'"		>> $loc

zenity  --info --title "Done" --text "All done, your new shortcut waits in:  $loc" --width 150

