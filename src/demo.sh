#!/bin/bash

setterm --cursor off
# Intro

clear
sleep 1
printf '\n%.0s' {1..5}
toilet -f ivrit 'Code Rocks!' | boxes -d cat -a hc -p h8 | ./goslow -s 40000
sleep 3; clear;

# Use filelist, cat, and goslow to scroll through code; pause at interesting
# code sniplets

# show source code statistics
sleep 1
clear
printf '\n%.0s' {1..5}
echo -e "Source Code Statistics`cat stats.txt | awk '{print}' ORS='\\t\\t\\n' | head -c -3`" | boxes -d ian_jones | ./goslow -s 25000 | lolcat
sleep 4
printf '\n%.0s' {1..50} | ./goslow -s 25000
clear

# outtro - team presentation
figlet -c By | ./goslow -s 40000 | lolcat
figlet -c Team Codey | ./goslow -s 40000 | lolcat
sleep 1
figlet -c "***" | ./goslow -s 10000 | lolcat
sleep 1
figlet -c "Thanx for watching" | ./goslow -s 40000 | lolcat
sleep 5
# script note
printf '\n%.0s' {1..50} | ./goslow -s 25000
echo -e "\n\t\tCode demo scripts by\n\t\tPeter Frandsen\n\t\tpfrandsen@gmail.com" | boxes -d santa | ./goslow -s 25000
sleep 2
printf '\n%.0s' {1..50} | ./goslow -s 25000
sleep 1
setterm --cursor off
