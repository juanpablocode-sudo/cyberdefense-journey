#!/bin/bash

echo "Conexiones activas:"

netstat -ant

echo "----------------------"
echo "Posibles conexiones externas:"

netstat -ant | grep ESTABLISHED
