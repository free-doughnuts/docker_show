# docker_show.sh - Simple bash script 🐳

This script will show you:

![docker images](https://img.shields.io/badge/COMMAND-docker%20images-blue)📷
![container ls](https://img.shields.io/badge/COMMAND-container%20ls-blue)🐋
![docker ps](https://img.shields.io/badge/COMMAND-docker%20ps-blue)🛠
![docker ps -a](https://img.shields.io/badge/COMMAND-docker%20ps%20--a-blue)🛠🛠
![docker network ls](https://img.shields.io/badge/COMMAND-docker%20network%20ls-blue)🖇

<!--
-  Docker Images List 📷
- Containers List 🐋
- Docker Ps 🛠
- Docker Ps With a 🛠🛠
- Docker Network 🖇
-->

![sceenshot](images/screenshot.png)

# How to use this script?

1. git clone the file
2. enter to docker_show directory by `cd docker_show`
3. make the file executible by `chmod +x docker_show.sh`
4. launch the script by the command `./docker_show.sh`
5. take a bite from your donut and a little sip from you coffee 🍩 ☕

# Replace default colors

- the default colors that enabled in the script are Blue lines with Yellow content
- under `represent the lines color` commentout the default one, and uncommented the other color that you want
- under `horizontally stretched line color` commentout the default one, and uncommented the other color that you want
- under `table content area` make sure to replace the color code name as well

The default enabled colors are:
- under `represent the lines color` the enabled color is `blue_line=`
- under `horizontally stretched line color` the `echo` point to `{blue_line}`

There Are 2 more colors available inside the script:

- Red = `#red_line="\e[0;101m${stretch_line}"` | `#echo -e "${red_line}${stop}"`
- Green = `#green_line="\e[0;102m${stretch_line}"` | `#echo -e "${green_line}${stop}"`

**INFO:** I didn't added more colors code to the table content, because i find out that Yellow color has a good contrast - in some cases the colors will be a bit different - it depends on your environment 

**IMPORTANT:** make sure to leave `stretch_line` and `stop="\e[0m"` uncommented - comment them out will break the colors

# Linux distros 🐧

- this script will work on any linux distro in town
- make sure to run this script on the docker host machine
- for a better view, stretch your terminal a bit
- recommended stretch size: 140x40
- you can verify the size by the command:`tput cols` and `tput lines`

