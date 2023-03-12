#!/bin/bash

printf "\e[0m\n"                                        
printf "\e[1;32m   _____       _                       ________ \e[0m\n"
printf "\e[1;32m  / ___/____  (_)___  ___  _____      /  _/ __ \ \e[0m\n"
printf "\e[1;32m  \__ \/ __ \/ / __ \/ _ \/ ___/_____ / // /_/ /\e[0m\n"
printf "\e[1;32m ___/ / / / / / /_/ /  __/ /  /_____// // ____/ \e[0m\n"
printf "\e[1;32m/____/_/ /_/_/ .___/\___/_/        /___/_/      \e[0m\n"
printf "\e[1;32m            /_/                  Kevin Deep   \e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[\e[1;37m✞=====<SNIPER-IP 2023\e[\e[1;37m\e[1;37m\e[0m\e[1;37m | Created By Kevin Deep (Archangel White)\e[1;37m\e[1;37m>=====✞\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;32m[\e[0m\e[1;31m✔\e[0m\e[1;32m]\e[0m\e[1;32m Enter IP Address \e[0m\e[1;32m: \e[0m\e[0;32m\en' useripaddress

ipaddripapico=$(curl -s "https://api.incolumitas.com/?q=$useripaddress" -L)
ipaddripapicom2=$(curl -s "https://ip-api.io/json/$useripaddress" -L)
myipaddripapicom3=$(curl -s "https://ipapi.co/$useripaddress/json" -L)
userip=$(echo $ipaddripapico | grep -Po '(?<="ip":)[^,]*' | tr -d '[]"')
usercity=$(echo $ipaddripapico | grep -Po '(?<="city":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
useregion=$(echo $ipaddripapico | grep -Po '(?<="state":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
usercountrycode=$(echo $ipaddripapicom2 | grep -Po '(?<="country_code":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
usercountry=$(echo $ipaddripapicom2 | grep -Po '(?<="country_name":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
userlat=$(echo $ipaddripapico | grep -Po '(?<="latitude":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
userlon=$(echo $ipaddripapico | grep -Po '(?<="longitude":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
usertime=$(echo $myipaddripapicom3 | grep -Po '(?<="timezone":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
userpostal=$(echo $ipaddripapico | grep -Po '(?<="zip":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
userlocaltime=$(echo $ipaddripapico | grep -Po '(?<="local_time":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
userasn=$(echo $myipaddripapicom3 | grep -Po '(?<="asn":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
userisp=$(echo $ipaddripapico | grep -Po '(?<="org":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
myversion=$(echo $myipaddripapicom3 | grep -Po '(?<="version":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
userlanguage=$(echo $myipaddripapicom3 | grep -Po '(?<="languages":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
usercountrycolling=$(echo $myipaddripapicom3 | grep -Po '(?<="country_calling_code":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

printf "\e[0m\n"
printf "  \e[0m\e[0;32m  IP Address    \e[0m\e[1;31m➤\e[0m\e[0;32m $userip\e[0m\n"
printf "  \e[0m\e[0;32m  City          \e[0m\e[1;31m➤\e[0m\e[0;32m $usercity\e[0m\n"
printf "  \e[0m\e[0;32m  Region        \e[0m\e[1;31m➤\e[0m\e[0;32m $useregion\e[0m\n"
printf "  \e[0m\e[0;32m  Country       \e[0m\e[1;31m➤\e[0m\e[0;32m  $usercountry\e[0m\n"
printf "  \e[0m\e[0;32m  Time Zone     \e[0m\e[1;31m➤\e[0m\e[0;32m $usertime\e[0m\n"
printf "  \e[0m\e[0;32m  Country Code  \e[0m\e[1;31m➤\e[0m\e[0;32m  $usercountrycode\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[0;32m  Latitude      \e[0m\e[1;31m➤\e[0m\e[0;32m $userlat\e[0m\n"
printf "  \e[0m\e[0;32m  Longitude     \e[0m\e[1;31m➤\e[0m\e[0;32m $userlon\e[0m\n"
printf "  \e[0m\e[0;32m  Postal Code   \e[0m\e[1;31m➤\e[0m\e[0;32m $userpostal\e[0m\n"
printf "  \e[0m\e[0;32m  Local Time    \e[0m\e[1;31m➤\e[0m\e[0;32m $userlocaltime\e[0m\n"
printf "  \e[0m\e[0;32m  Lenguage      \e[0m\e[1;31m➤\e[0m\e[0;32m $userlanguage\e[0m\n"
printf "  \e[0m\e[0;32m  Phone Codes   \e[0m\e[1;31m➤\e[0m\e[0;32m $usercountrycolling\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[0;32m  ASN           \e[0m\e[1;31m➤\e[0m\e[1;92m $userasn\e[0m\n"
printf "  \e[0m\e[0;32m  ISP           \e[0m\e[1;31m➤\e[0m\e[1;92m $userisp\e[0m\n"
printf "  \e[0m\e[0;32m  Version       \e[0m\e[1;31m➤\e[0m\e[1;92m $myversion\e[0m\n"
sleep 1
printf "\e[0m\n"
printf "\e[0m\n"
exit 1

else

}
