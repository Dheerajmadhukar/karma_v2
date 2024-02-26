#!/bin/bash
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

eclare -A tools='(
["python3"]="apt install python3 -y"
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
printf "\n\n#######################################################################\n"
printf " Looking for installed tools \n\n"
printf "#######################################################################\n"
##########
echo "${!tools[@]}"
function check_install(){
for i in "${!tools[@]}";do
        if [[ $i == "mmh3" ]];then
                if python3 -c "import mmh3" &> /dev/null;then
                        printf " [+] ${i} [YES]\n"
                else
                        printf " [-] ${i} [NO]\t||\tManually install: pip3 install -U mmh3\n"
                fi

        else
                type -P ${i} &> /dev/null
                #echo "Command $i : ${tools[$i]}"
                if [[ ! $? -eq 0 ]];then
                        printf " [-] ${i} [NO]\t||\tManually install: ${tools[$i]}\n"
                else
                        printf " [+] ${i} [YES]\n"
                fi
        fi
done
}
check_install
