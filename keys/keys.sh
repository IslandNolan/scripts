#!/bin/bash
echo "@Author: Nolan B - 06-2022"

read -p "Enter your Github Email Address: " ghemail
read -n 1 -s -r -p "[Press any key to continue]"

echo "Generating SSH Key for $hostname"
ssh-keygen -t rsa -b 4096 -C "$ghemail"
cat $HOME/.ssh/id_rsa.pub

echo "Import the above key into Github as an SSH Key"
echo "Ensure that you have used the right Github Email, else this will not work. Current E-mail: $ghemail"
echo "When prompted, use RSA, 4096 Length, Key does not expire, and your github username."
read -n 1 -s -r -p "[Press any key to continue]"

echo "Generating GPG Key for $hostname"

gpg --full-generate-key
#prints gpg key.
gpg --armor --export $ghemail

echo "Key Generation Complete!"
