#!/bin/bash
black='\e[38;5;016m'
bluebg='\e[48;5;038m'${black}
red='\e[31m'
redbg='\e[30;41m'${black}
lightred='\e[91m'
blink='\e[5m'
lightblue='\e[38;5;109m'
green='\e[32m'
greenbg='\e[48;5;038m'${black}
yellow='\e[33m'
logo='\033[0;36m'
upper="${lightblue}╔$(printf '%.0s═' $(seq "80"))╗${end}"
lower="${lightblue}╚$(printf '%.0s═' $(seq "80"))╝${end}"
right=$(printf '\u2714')
cross=$(printf '\u2718')
end='\e[0m'
program="⡷⠂𝚔𝚊𝚛𝚖𝚊 𝚟𝟸⠐⢾"
version="v2"
description="Premium Shodan Recon"
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

declare -A tools='(
["python3"]="apt install python3 -y"
["cvemap"]="go install github.com/projectdiscovery/cvemap/cmd/cvemap@latest"
["pip3"]="apt install python3-pip -y"
["shodan"]="python3 -m pip install -U shodan"
["mmh3"]="python3 -m pip install -U mmh3"
["jq"]="apt install jq -y"
["httprobe"]="go install github.com/tomnomnom/httprobe@master"
["interlace"]="git clone https://github.com/codingo/Interlace.git;cd ./Interlace;python3 setup.py install;cd ${BASE_DIR}"
["nuclei"]="go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest"
["lolcat"]="apt install lolcat -y"
["anew"]="go install github.com/tomnomnom/anew@master"
)'
##########
printf "\n${upper}\n\t${logo}Helper script to prepare the ${program} environment\n${lower}${end}\n\n"
##########
function check_install(){
for i in "${!tools[@]}";do
        if [[ $i == "mmh3" ]];then
                if python3 -c "import mmh3" &> /dev/null;then
                        printf " ${green}[+] ${i} \t[YES]${end}\n"
                else
                        printf " ${redbg}[-] ${i} \t[NO]${end}\t:\t${green}Manually install: pip3 install -U mmh3${end}\n"
                fi

        else
                type -P ${i} &> /dev/null
                #echo "Command $i : ${tools[$i]}"
                if [[ ! $? -eq 0 ]];then
                        printf "${redbg} [-] ${i} [NO]${end}\t:\t${green}Manually install:${end} ${green}${tools[$i]}${end}\n"
                else
                        if [[ ${i} == "python3" ]];then
                                printf "${green} [+] ${i} \t[YES]${end}\t:\t${logo}`python3 -V | awk '{print $NF}'`${end}\n"
                        elif [[ ${i} == "cvemap" ]];then
                                printf "${green} [+] ${i} \t[YES]${end}\t:\t${logo}`cvemap -version 2>&1| awk '{print $NF}'`\n${end}"
                        elif [[ ${i} == "pip3" ]];then
                                printf "${green} [+] ${i} \t[YES]${end}\t:\t${logo}`pip3 -V | awk '{print $2}'`${end}\n"
                        elif [[ ${i} == "shodan" ]];then
                                printf "${green} [+] ${i} \t[YES]${end}\t:\t${logo}`shodan version`${end}\n"
                        elif [[ ${i} == "jq" ]];then
                                printf "${green} [+] ${i} \t[YES]${end}\t:\t${logo}`jq --version`${end}\n"
                        elif [[ ${i} == "nuclei" ]];then
                                printf "${green} [+] ${i} \t[YES]${end}\t:\t${logo}`nuclei -version 2>&1|head -1|awk '{print $NF}'`${end}\n"
                        elif [[ ${i} == "lolcal" ]];then
                                printf "${green} [+] ${i} \t[YES]${end}\t:\t${logo}`lolcat --version| awk '{print $2}'`${end}\n"
                        elif [[ ${i} == "anew" ]];then
                                printf "${green} [+] ${i} \t[YES]${end}\n"
                        elif [[ ${i} == "httprobe" ]];then
                                printf "${green} [+] ${i} \t[YES]${end}\n"
                        elif [[ ${i} == "interlace" ]];then
                                printf "${green} [+] ${i} \t[YES]${end}\n"
                        fi



                fi
        fi
done
}
check_install
