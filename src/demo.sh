#!/bin/bash

clear
sleep 1
yes '' | head -n5
toilet -f ivrit 'Code Rocks!' | boxes -d cat -a hc -p h8 | ./goslow -s 40000
sleep 3; clear;

# Use filelist, cat, and goslow to scroll through code; pause at interesting
# code sniplets

figlet -c By | ./goslow -s 40000 | lolcat
figlet -c Team Codey | ./goslow -s 40000 | lolcat
sleep 1
figlet -c "***" | ./goslow -s 10000 | lolcat
sleep 1
figlet -c "Thanx for watching" | ./goslow -s 40000 | lolcat
sleep 5
yes '' | head -n50 | ./goslow -s 25000
sleep 7
