# find-and-import-Pgp-keys-for-e-mails-from-mac-Contacts

Checks all of your email-addreses stored in vCard-exports, if they have a public key available

To do this:

 * Export all of your contacts as vCard 
  * Mac OS:
    * export all of your contacts as Contacs.txt (CMD+A on contacts right click: export vCard)
    * If Contacts.app forces you to use other file-ending vcf click use both and rename file to .txt (manually or via comand line:
    ``` 
    mv Contacts.txt.vcf Contacts.txt 
    ```
  
  * Google Contacts:
    * https://support.google.com/mail/answer/24911?hl=en 
  

 * Put this script in the same folder or change the path of the file in shell script

 * To run this, you have to make it executable first: 
 ``` 
 chmod +x contacts.sh
 ```

 * Execute: 
   ```
 ./findPgpEmails.sh
  ```
  
* If key is found gpg will ask you how many of the keys you want to import. Mostly it's one.
