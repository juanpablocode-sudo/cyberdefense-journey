# 🛡️ Lab: Mini IDS en Linux

## 🎯 Objetivo

Detectar intentos fallidos de autenticación en el sistema.

## 🛠️ Herramientas

- grep
- awk
- sort
- uniq

## 🔍 Procedimiento

1. Leer logs del sistema (/var/log/auth.log)
2. Buscar intentos fallidos de login
3. Identificar direcciones IP sospechosas

## 🚨 Detección

Se detectan múltiples intentos fallidos desde una misma IP.

## 🔐 Aplicación en ciberdefensa

- Detección de ataques de fuerza bruta
- Monitoreo de accesos no autorizados
- Análisis de logs de seguridad

## 🔗 Script utilizado

[Ver Mini IDS](../scripts/mini-ids.sh)
