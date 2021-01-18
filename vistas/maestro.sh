#!/bin/bash


#ejecutar otros archivos
##muestra nombre programa
primer_p=$1

##muestra prioridad programa
primer_prioridad=$2
#muestra tiempo
primer_t=$3


##muestra nombre programa
segund_p=$4
##muestra prioridad programa
segund_prioridad=$5
#muestra tiempo
segund_t=$6

echo $1
echo $2

echo $4
echo $5





if [ "$5" -le "$2" ];
then
#ejecutar otro archivo
./"$4" & sleep "$6"; kill $!	
./"$1" & sleep "$3"; kill $!

else
#ejecutar otro archivo
./"$1" & sleep "$3"; kill $!
./"$4" & sleep "$6"; kill $!



fi








