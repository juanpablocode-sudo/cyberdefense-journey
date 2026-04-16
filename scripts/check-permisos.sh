#!/bin/bash

echo "Archivos con permisos 777 (riesgo de seguridad):"

find / -type f -perm 0777 2>/dev/null
