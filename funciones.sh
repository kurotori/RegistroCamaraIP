#!/bin/bash

### Funciones de uso general ###

#Devuelve la fecha del sistema
fecha(){
    printf -v anio '%(%Y)T'
    printf -v mes '%(%m)T'
    printf -v dia '%(%d)T'
    echo "$anio-$mes-$dia"
}

#Devuelve la hora del sistema
hora(){
    printf -v hora '%(%H)T'
    printf -v min '%(%M)T'
    printf -v seg '%(%S)T'
    echo "$hora-$min-$seg"
}

#Genera un registro de actividades en un archivo de texto
#Parámetros: 1 - Tipo de registro, 2 - Datos del registro, 3 - Ruta del archivo de registro
registro(){
    fecha=$(fecha)
    hora=$(hora)
    echo "[$fecha][$hora]:($1):($2)">>./registros/registro-"$fecha".txt
    echo "[$fecha][$hora]:($1):($2)"
}


## Pruebas ##
fecha
hora
registro "PRUEBA" "Esto es una prueba"
