#!/bin/bash

# Written by RolanDroid <rolandosimoncelli8@gmail.com@gmail.com>

# Colors
txtrst=$(tput sgr0) # Stock Color
bldred=${txtrst}$(tput setaf 1) # red
bldcya=${txtrst}$(tput setaf 6) # cyan
bldmag=${txtbld}$(tput setaf 5) # magenta
bldgrn=${txtbld}$(tput setaf 2) # green


cpuTemp0=$(cat /sys/class/thermal/thermal_zone0/temp)
cpuTemp1=$(($cpuTemp0/1000))
cpuTemp2=$(($cpuTemp0/100))
cpuTempM=$(($cpuTemp2 % $cpuTemp1))

echo "${bldgrn}================================================================${txtrst}"
echo "${bldred}CPU temp"="$cpuTemp1"."$cpuTempM'C'${txtrst}"
echo "${bldcya}GPU "$(/opt/vc/bin/vcgencmd measure_temp)"${txtrst}"
echo "${bldgrn}================================================================${txtrst}"
echo "${bldmag}Thanks for use RPI Sensors,Good bye${txtrst}"
echo "${bldgrn}================================================================${txtrst}"

