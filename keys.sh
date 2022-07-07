#/bin/bash
echo "@Author: Nolan B - 06-2022"

read -p "Enter your Github Email Address: " ghemail
read -p "
Press [Enter] To generate an SSH Key--
" lolemptyvariable


echo "Generating SSH Key for $hostname"
ssh-keygen -t rsa -b 4096 -C "$ghemail"
cat $HOME/.ssh/id_rsa.pub

echo "
Import the above key into Github as an SSH Key
"
read -p "Press [Enter] to generate a GPG Key--
Ensure that you use your Github Email address: $ghemail
" lolemptyvariable



echo "Generating GPG Key for $hostname"
gpg --full-generate-key
#prints gpg key.
gpg --armor --export $ghemail

echo "Key Generation Complete!"
