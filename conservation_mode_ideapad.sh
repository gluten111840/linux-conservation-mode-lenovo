#!/bin/bash

conservation_mode_location="/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"
con_mode=$(cat "$conservation_mode_location")
on="1"
off="0"

echo "================ CONSERVATION MODE ================
Author: Bayu Eka Prawira
Email: bayueka980@gmail.com
Github: gluten111840
==================================================="

if [[ $con_mode -eq $on ]]; then
    echo "Currently, the conservation mode is ON
Do you want to turn OFF the conservation mode? [Y/N]:"
    read -r VAR1
    if [[ $VAR1 -eq "Y" || $VAR1 -eq "y" ]]; then
        echo "$off" > "$conservation_mode_location"
        echo "Conservation mode turned OFF

================ CONSERVATION MODE ================"
    else
        echo "Bye

================ CONSERVATION MODE ================"
    fi
else
    echo "Currently, the conservation mode is OFF
Do you want to turn on the conservation mode? [Y/N]:"
    read -r VAR2
    if [[ $VAR2 -eq "Y" || $VAR2 -eq "y" ]]; then
        echo "$on" > "$conservation_mode_location"
        echo "Conservation mode turned ON

================ CONSERVATION MODE ================"
    else
        echo "Bye

================ CONSERVATION MODE ================"
    fi
fi
