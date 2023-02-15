#!/bin/bash

echo "Introduce el número de llamadas que has realizado este mes: "
read llamadas

if [ $llamadas -eq 0 ]; then
  echo "La tarifa más conveniente para ti es la Tarifa 1, con un importe fijo de 100€ que incluye llamadas ilimitadas."
  echo "El coste total de llamadas será de 100€."
elif [ $llamadas -lt 50 ]; then
  coste=$(( 50 + llamadas ))
  echo "La tarifa más conveniente para ti es la Tarifa 2, con un importe fijo de 50€ y un coste adicional de 1€ por cada llamada."
  echo "El coste total de llamadas será de $coste €."
else
  coste=$(( 20 + (llamadas * 2) ))
  echo "La tarifa más conveniente para ti es la Tarifa 3, con un importe fijo de 20€ y un coste adicional de 2€ por cada llamada."
  echo "El coste total de llamadas será de $coste €."
fi
