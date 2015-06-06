#!/bin/bash

# searches for existing pgp public keys for the emails of your contacts 
#
# to do this, export all of your contacts as Contacs.txt (CMD+A on contacts right click: export vCard)
# If Contacts.app forces you to use other file vcf click use both and rename file to txt manually or via comand line: mv Contacts.txt.vcf Contacts.txt
# Put this script in the same folder or change the path of the file
#
# To run this, you have to make it executable first: chmod +x contacts.sh
# 
# If key is found gpg will ask you how many of the keys you want to import. Mostly it's one.
# 
# written by Paul Wille, 2015/06/06

grep EMAIL "Contacts.txt" | awk -F: '{print $2}' | sed 's/.$//' > emails.txt

while read line           
do           
    #echo "$line\n"           
    gpg --search-keys $line
done <emails.txt;

rm emails.txt