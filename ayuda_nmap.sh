cat << 'EOF' > ayuda_nmap.sh
#!/bin/bash

# Colores
VERDE='\033[0;32m'
AZUL='\033[0;34m'
AMARILLO='\033[1;33m'
RESET='\033[0m'

clear
echo -e "${AZUL}===================================================${RESET}"
echo -e "${AMARILLO}   ASISTENTE DE COMANDOS NMAP (Hacking Ético)      ${RESET}"
echo -e "${AZUL}===================================================${RESET}"
echo -e "Selecciona una categoría para ver los comandos:"
echo "1) Descubrimiento de Hosts (¿Quién está conectado?)"
echo "2) Escaneo de Puertos y Servicios"
echo "3) Detección de Sistema Operativo y Versiones"
echo "4) Escaneos Silenciosos (Evitar Firewalls)"
echo "5) Salir"
echo -e "${AZUL}===================================================${RESET}"
read -p "Elija una opción [1-5]: " opcion

case $opcion in
    1)
        echo -e "\n${VERDE}Comando: nmap -sn [tu_red/24]${RESET}"
        echo "Ejemplo: nmap -sn 192.168.1.0/24"
        ;;
    2)
        echo -e "\n${VERDE}Comando: nmap -p- -v [IP]${RESET}"
        echo "Explicación: Escanea los 65535 puertos con detalles (verbose)."
        ;;
    3)
        echo -e "\n${VERDE}Comando: nmap -sV -O [IP]${RESET}"
        echo "Explicación: Detecta versiones de software y Sistema Operativo."
        ;;
    4)
        echo -e "\n${VERDE}Comando: nmap -sS -T2 [IP]${RESET}"
        echo "Explicación: Escaneo SYN lento para no ser detectado."
        ;;
    5)
        exit 0
        ;;
    *)
        echo "Opción no válida."
        ;;
esac
EOF
