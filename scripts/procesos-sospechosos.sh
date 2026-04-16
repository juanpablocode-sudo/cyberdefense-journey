#!/bin/bash

echo "Procesos con alto consumo de CPU:"

ps aux --sort=-%cpu | head -10

echo "----------------------"
echo "Procesos con alto consumo de memoria:"

ps aux --sort=-%mem | head -10
