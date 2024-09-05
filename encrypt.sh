
bash
#!/bin/bash

# Encrypt the word "land" using openssl
encrypted=$(echo -n "land" | openssl enc -aes-256-cbc -a -salt -pbkdf2 -iter 10000 -pass pass:myname)

# Print the encrypted word
echo $encrypted


# Decrypt the encrypted word
decrypted=$(echo -n "$encrypted" | openssl enc -aes-256-cbc -a -salt -pbkdf2 -iter 10000 -pass pass:myname -d)

# Print the decrypted word
echo $decrypted

