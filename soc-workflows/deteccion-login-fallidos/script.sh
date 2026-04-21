#!/bin/bash

echo "Detectando intentos fallidos..."
grep "Failed password" /var/log/auth.log | awk '{print $11}' | sort | uniq -c | sort -nr
