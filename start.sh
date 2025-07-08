#!/bin/sh

# Prüfen, ob das Script als root läuft
if [ "$(id -u)" -ne 0 ]; then
  echo "Dieses Script benötigt Root-Rechte. Starte das Script bitte mit sudo..."
  exec sudo "$0" "$@"
fi

# Ab hier kommen die Befehle
apt update
apt upgrade -y
