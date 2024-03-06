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
["python3"]="sudo apt install python3 -y -qq"
["cvemap"]="go install github.com/projectdiscovery/cvemap/cmd/cvemap@latest"
["pip3"]="sudo apt install python3-pip -y -qq"
["shodan"]="sudo python3 -m pip install -U shodan"
["mmh3"]="sudo python3 -m pip install -U mmh3"
["jq"]="sudo apt install jq -y -qq"
["httprobe"]="go install github.com/tomnomnom/httprobe@master"
["interlace"]="sudo git clone https://github.com/codingo/Interlace.git"
["nuclei"]="go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest"
["lolcat"]="sudo apt install lolcat -y -qq"
["anew"]="go install github.com/tomnomnom/anew@master"
)'
##########
function banner(){
        printf "\n${upper}\n\t${logo}${program} helper script to prepare the environment\n${lower}${end}\n\n">&2
}

function help(){
        printf "Usage:\n">&2
        printf "\t--check :\t\tTo check installed prerequisite packages/tools/libs\n">&2
        printf "\t--install :\t\tTo install prerequisite packages/tools/libs\n">&2
        printf "\t-h/--help :\t\tHelp\n">&2
        printf '\n\n' >&2
        printf "╔════════[ ${lightred}me_dheeraj [Author]${end} ]═════════════════════════════════════════════════════════════╗\n\n" >&2
        printf "${logo}\t - https://buymeacoffee.com/medheeraj${end}\n" >&2
        printf "${logo}\t - https://github.com/Dheerajmadhukar${end}\n" >&2
        printf "${logo}\t - https://twitter.com/Dheerajmadhukar${end}\n" >&2
        printf "${logo}\t - https://www.youtube.com/c/DheerajMadhukar${end}\n" >&2
        printf "${logo}\t - https://linkedin.com/in/dheerajtechnolegends${end}\n" >&2
        printf "╚════════════════════════════════════════════════════════════════════════════════════════════╝\n\n" >&2
}
function check_install(){
for i in "${!tools[@]}";do
        if [[ $i == "go" ]];then
                if ${i} version &> /dev/null;then
                        printf "${green} [+] ${i} ${end}\t:\t${logo}`go version | awk '{print $3}'`${end}\n"
                else
                        printf " ${redbg}[-] ${i} ${end}\t:\t${red}Manually install: \`${tools[$i]}\` OR \`bash install.sh --install\`${end}\n"
                fi
        elif [[ $i == "mmh3" ]];then
                if python3 -c "import mmh3" &> /dev/null;then
                        printf "${green} [+] ${i} ${end}\t:\t${logo}`pip3 list | grep 'mmh3'|awk '{print $NF}'`${end}\n"
                else
                        printf "${redbg} [-] ${i} ${end}\t:\t${red}Manually install: \`pip3 install -U mmh3\` OR \`bash install.sh --install\`${end}\n"
                fi
        elif [[ $i == "python3" ]];then
                if ${i} <<<"exit()"&>/dev/null;then
                        printf "${green} [+] ${i} ${end}\t:\t${logo}`python3 -V | awk '{print $NF}'`${end}\n"
                else
                        printf " ${redbg}[-] ${i} ${end}\t:\t${red}Manually install: \`${tools[$i]}\` OR \`bash install.sh --install\`${end}\n"
                fi
        elif [[ $i == "lolcat" ]];then
                if ${i} --version&>/dev/null;then
                        printf "${green} [+] ${i} ${end}\t:\t${logo}`lolcat --version | awk '{print $2}'`${end}\n"
                else
                        printf " ${redbg}[-] ${i} ${end}\t:\t${red}Manually install: \`${tools[$i]}\` OR \`bash install.sh --install\`${end}\n"
                fi

        else
                ${i} --help &> /dev/null
                if [[ ! $? -eq 0 ]];then
                        printf "${redbg} [-] ${i} ${end}\t:\t${red}Manually install: \`${tools[$i]}\` OR \`bash install.sh --install\`${end}\n"
                else
                        if [[ ${i} == "cvemap" ]];then
                                printf " ${green}[+] ${i} ${end}\t:\t${logo}`cvemap -version 2>&1| awk '{print $NF}'`\n${end}"
                        elif [[ ${i} == "pip3" ]];then
                                printf " ${green}[+] ${i} ${end}\t:\t${logo}`pip3 -V | awk '{print $2}'`${end}\n"
                        elif [[ ${i} == "shodan" ]];then
                                printf " ${green}[+] ${i} ${end}\t:\t${logo}`shodan version`${end}\n"
                        elif [[ ${i} == "jq" ]];then
                                printf " ${green}[+] ${i} ${end}\t:\t${logo}`jq --version`${end}\n"
                        elif [[ ${i} == "nuclei" ]];then
                                printf " ${green}[+] ${i} ${end}\t:\t${logo}`nuclei -version 2>&1|head -1|awk '{print $NF}'`${end}\n"
                        elif [[ ${i} == "anew" ]];then
                                printf " ${green}[+] ${i} ${end}\n"
                        elif [[ ${i} == "httprobe" ]];then
                                printf " ${green}[+] ${i} ${end}\n"
                        elif [[ ${i} == "interlace" ]];then
                                printf " ${green}[+] ${i} ${end}\n"
                        fi
                fi
        fi
done
}
function install_tools(){
        for i in ${!tools[@]};do
                if [[ $i == "mmh3" ]];then
                        if ! python3 -c "import mmh3" &> /dev/null;then
                                echo "Installing tool...: ${tools[$i]}"
                                ${tools[$i]} pip setuptools #&> /dev/null
                                printf "${green} [+] ${i} Installed${end}\n"
                        fi
                elif [[ $i == "lolcat" ]];then
                        if ! ${i} --version &> /dev/null;then
                                ${tools[${i}]} #&> /dev/null
                        fi
                elif [[ $i == "interlace" ]];then
                        if ! ${i} --help &> /dev/null;then
                                ${tools[${i}]} #&> /dev/null
                                cd ${BASE_DIR}/Interlace #&> /dev/null
                                pip3 install -r requirements.txt #&> /dev/null
                                python3 setup.py install #&>/dev/null
                        fi
                else
                        ${i} --help &> /dev/null
                        if [[ ! $? -eq 0 ]];then
                                ${tools[$i]} #&> /dev/null
                                if [[ $? -eq 0 ]];then
                                        echo "Installing tool...: ${tools[$i]}"
                                        printf "${green} [+] ${i} Installed${end}\n"
                                fi
                        fi
                fi
        done
}
prarg(){
set +u
         case $1 in
                '--check')
                        banner
                        check_install
                        shift
                         ;;
                '--install')
                        banner
                        if ! go version &> /dev/null;then
                                #${tools[${i}]}
                                OS="$(uname -s)"
                                ARCH="$(uname -m)"
                                case $OS in
                                    "Linux")
                                        case $ARCH in
                                                "x86_64")
                                                        ARCH=amd64
                                                        ;;
                                                "aarch64")
                                                        ARCH=arm64
                                                        ;;
                                                "armv6" | "armv7l")
                                                        ARCH=armv6l
                                                        ;;
                                                "armv8")
                                                        ARCH=arm64
                                                        ;;
                                                "i686")
                                                        ARCH=386
                                                        ;;
                                                .*386.*)
                                                        ARCH=386
                                                        ;;
                                        esac
                        PLATFORM="linux-$ARCH"
                        ;;
                                        "Darwin")
                                                case $ARCH in
                                                        "x86_64")
                                                                ARCH=amd64
                                                                ;;
                                                        "arm64")
                                                                ARCH=arm64
                                                                ;;
                                                esac
                        PLATFORM="darwin-$ARCH"
                        ;;
                                esac


                                LATEST_GO_VERSION="$(curl --silent 'https://go.dev/VERSION?m=text' | head -n 1)";
                                LATEST_GO_DOWNLOAD_URL="https://go.dev/dl/${LATEST_GO_VERSION}.${PLATFORM}.tar.gz"
                                printf "cd to home ($USER) directory \n"
                                cd $HOME
                                printf "Downloading ${LATEST_GO_DOWNLOAD_URL}\n\n";
                                curl -kOJ -L --progress-bar $LATEST_GO_DOWNLOAD_URL
                                printf "Extracting file...\n"
                                tar -xf ${HOME}/${LATEST_GO_VERSION}.linux-amd64.tar.gz -C ${HOME}

                                export GOROOT="$HOME/go" 2>&1 > /dev/null
                                export GOPATH="$HOME/go/packages" 2>&1 > /dev/null
                                export PATH=$PATH:$GOROOT/bin:$GOPATH/bin 2>&1 > /dev/null
                                printf "APPENDING THIS LINE BELOW TO YOUR ~/.bashrc OR ~/.zshrc: \n
export GOROOT=\"$HOME/go\"\n
export GOPATH=\"$HOME/go/packages\"\n
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin\n
\n"
                                install_tools
                                go version
                        else
                                install_tools
                                printf "${bluebg}Ready to rock the digital realm !!!${end}\n"
                                printf " ${green}[+] GO ${end}\t:\t${logo}`go version 2>&1| grep -v 'warning:'| awk '{print $3}'`${end}\n"
                                check_install
                        fi
                        shift
                         ;;
                '-h'|'--help')
                        banner
                        help
                        exit 0
                        ;;
                *)
                        printf "${red}Error: unknown/invalid: $1, check '-h/--help'${end}\n"
                        help
                        exit 1
                        ;;
                "")
                        printf "${red}Error: option/argument required, check '-h/--help'${end}\n"
                        help
                        exit 2
                        ;;

         esac
}
prarg $@
tput sgr0

#####################
