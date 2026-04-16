#!/bin/bash

echo "🛡️ Mini IDS - Detección de intentos fallidos de login"
echo "--------------------------------------------------"

LOG="/var/log/auth.log"

if [ ! -f $LOG ]; then
    echo "No se encontró el archivo de log."
    exit 1
fi

echo "Buscando intentos fallidos..."

grep "Failed password" $LOG | tail -10

echo "--------------------------------------------------"
echo "Posibles IPs sospechosas:"

grep "Failed password" $LOG | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr | head

echo "--------------------------------------------------"
echo "Análisis finalizado."

echo "--------------------------------------------------"
echo "🚨 ALERTA: IPs con más de 5 intentos fallidos"

grep "Failed password" $LOG | awk '{print $(NF-3)}' | sort | uniq -c | awk '$1 > 5'
