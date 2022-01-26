#!/bin/sh
echo "Hello. What your $(tput setaf 2)name$(tput setaf 7)!"
read name
while :
do
  echo "Hi, $name, can you tell me your surname ($(tput setaf 2)yes/$(tput setaf 1)no$(tput setaf 7))?"
  read yesOrNo
  case $yesOrNo in
        yes)
                echo "Type in your $(tput setaf 2)surname$(tput setaf 7)"
                read surname
                echo "Thank you $(tput setaf 2)$name $surname$(tput setaf 7)"
                break
                ;;
        no)
                echo "I understand it's not necessary"
                surname = ""
                break
                ;;
        *)
                echo "Wrong command"
                ;;
  esac
done
echo
counter=$((${#name} + ${#surname}))
echo "$(tput setaf 3) Your name and surname (if specified) has $counter symbols in it$(tput setaf 7)"
mkdir ~/$name$surname
cp /etc/passwd ~/$name$surname/
echo "$(tput setab 2)$(tput setaf 1)Have a very nice day!$(tput setaf 7)$(tput setab 0)"
