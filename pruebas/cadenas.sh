#########################################################
#       -=[ ... Centro de Software Ibiza ... ]=-        #
# Ejemplo de como manejar cadenas de carácteres en BASH # 
#                                                       #
#                        - Creado por moi el 12/04/2019 #
#########################################################
#!/bin/bash

TEXTO=$1
NUM_LETRAS=$(echo $TEXTO | wc -c)
L_TOTALES=$(expr $NUM_LETRAS - 1)
FRASE_ORIGINAL="El perro es muy grande, el perro es muy bueno..."
SUBS1=${FRASE_ORIGINAL/perro/gato}
SUBS2=${FRASE_ORIGINAL//perro/gato}

echo -e "\n-Texto original .: $TEXTO"
echo -e "-Num. Letras.....: $L_TOTALES\n"

echo -e "-Sustitución de la palabra perro por gato...\n"
echo -e "\t-Frase original ....: $FRASE_ORIGINAL"
echo -e "\t-Frase convertida ..: $SUBS2\n"

