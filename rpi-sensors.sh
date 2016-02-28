#!/bin/bash

# Written by RolanDroid <rolandosimoncelli8@gmail.com@gmail.com>

# Colors
txtrst=$(tput sgr0) # Stock Color
bldred=${txtrst}$(tput setaf 1) # red
bldcya=${txtrst}$(tput setaf 6) # cyan
bldmag=${txtrst}$(tput setaf 5) # magenta
bldgrn=${txtrst}$(tput setaf 2) # green

# CPU Sensors
cpuTemp0=$(cat /sys/class/thermal/thermal_zone0/temp)
cpuTemp1=$(($cpuTemp0/1000))
cpuTemp2=$(($cpuTemp0/100))
cpuTempM=$(($cpuTemp2 % $cpuTemp1))

# GPU Sensors
gpuTemp0=$(/opt/vc/bin/vcgencmd measure_temp)
gpuTemp0=${gpuTemp0//\'/º}
gpuTemp0=${gpuTemp0//temp=/}

echo "${bldcya}================================================================${txtrst}"
echo "${bldgrn}=================Welcome in RaspBerry PI Sensors================${txtrst}"
echo "${bldcya}================================================================${txtrst}"
echo "${bldred}CPU Temp: $cpuTemp1"."$cpuTempM"ºC"${txtrst}"
echo "${bldred}GPU Temp: $gpuTemp0${txtrst}"
echo "${bldgrn}================================================================${txtrst}"
echo "${bldmag}Thanks for use RPI-Sensors,Good bye${txtrst}"
echo "${bldgrn}================================================================${txtrst}"

read -p "Press [Enter] key to refresh..."
clear && . rpi/rpi-sensors.sh 
