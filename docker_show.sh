#!/bin/bash

#####[clear terminal screen]#####
clear

#####[show bold characters at bells area]#####
bold=$(tput bold)
normal=$(tput sgr0)

#####[date and time]#####
echo -e "🔔${bold}[SCRIPT STARTS AT] >>>${normal} \c"
date

#####[host ip address - in ubuntu-based distros]#####
#echo -e "🔔${bold}[HOST IP ADDRESS] >>>>${normal} \c"
#hostname -I | (awk '{print $1}'; dig +short myip.opendns.com @resolver1.opendns.com) |tr '\n' ' , '
#echo "(local addr & public addr)"

#####[host ip address - in arch-based distros]#####
echo -e ":bell:${bold}[HOST IP ADDRESS] >>>>${normal} \c"
nmcli device show | grep IP4.ADDRESS | head -1 | awk '{print $2}' | rev | cut -c 4- | rev | tr '\n' ' , ' && curl -s https://icanhazip.com | tr '\n' ' , '
echo "(local addr \ public addr)"

#####[public address]#####
#echo -e "🔔${bold}[PUBLIC IP ADDRESS] >>${normal} \c"
#dig +short myip.opendns.com @resolver1.opendns.com

#####[docker version]#####
echo -e "🔔${bold}[DOCKER VERSION] >>>>>${normal} \c"
docker --version | awk '{print $3, $4, $5}'

#####[represent the lines color]#####
stretch_line="\e[K"
blue_line="\e[0;104m${stretch_line}"
#red_line="\e[0;101m${stretch_line}"
#green_line="\e[0;102m${stretch_line}"
stop="\e[0m"


#####[table contect color]#####
BPurple='\033[1;35m'
Color2='\033[1;33m'


#####[horizontally stretched line color]#####
echo -e "${blue_line}${stop}"
#echo -e "${red_line}${stop}"
#echo -e "${green_line}${stop}"


#####[table content area]#####
printf "${BPurple}[COMMAND: docker images] 📷${Color2}\n"
docker images
	echo -e "${blue_line}${stop}"

printf "${BPurple}[COMMAND: container ls] 🐋${Color2}\n"
docker container ls
	echo -e "${blue_line}${stop}"

printf "${BPurple}[COMMAND: docker ps] 🛠${Color2}\n"
docker ps
	echo -e "${blue_line}${stop}"

printf "${BPurple}[COMMAND: docker ps -a] 🛠🛠${Color2}\n"
docker ps -a
	echo -e "${blue_line}${stop}"

printf "${BPurple}[COMMAND: docker network ls] 🖇${Color2}\n"
docker network ls
	echo -e "${blue_line}${stop}"

printf "${BPurple}[COMMAND: docker volume ls] 📥${Color2}\n"
docker volume ls
	echo -e "${blue_line}${stop}"

#####[time elapsed mark]#####
printf "${BPurple}[INFO: script done!] ☕️ 🍩${Color2}\n"
start=$(date +%s%N)
end=$(date +%s%N)
	echo "Elapsed Time: $(($end-$start)) seconds"
