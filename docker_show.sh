#!/bin/bash

#####[date and time]#####
echo "script starts at:" 🔔
date


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

printf "${BPurple}[INFO: script done in] ☕️ 🍩${Color2}\n"


#####[time elpased mark]#####
start=`date +%s%N`
end=`date +%s%N`
	echo `expr $end - $start` nanoseconds!

