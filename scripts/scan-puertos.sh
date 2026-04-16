#!/bin/bash

echo "Escaneando puertos abiertos..."

netstat -tuln | grep LISTEN

echo "Escaneo finalizado."
