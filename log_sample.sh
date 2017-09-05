#! /usr/bin/bash
read -p 'Entrez un titre: ' titre
echo "$titre"

(
#contenu du script pour remplir tes variables
Date=`date "+%Y%m%d"`
heure=`date "+%H%M%S"`
read -p 'nombre max d échantillon :' maxSample
read -p 'Entrez le nom de la mission ou de la manip: ' mission
read -p 'Entrez le nom du paramètre échantillonné : ' parm1

var2="$mission $parm1"
echo "$var2"
for (( i=1; i<=$maxSample; i++))
do
read -p 'Entrez votre nom : ' Nom
read -p 'Entrez le volume échantilloné : ' parm2
read -p 'Ecrire remarque: ' parm3
var="$Nom: $Date : $heure : $mission : $i : $parm1 : $parm2 : $parm3"
echo "$var" # etc.... avec ou sans mises en forme c'est a toi de voir
done


) > "$titre"$(date +%Y%m%d).log

exit 0