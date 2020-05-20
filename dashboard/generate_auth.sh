#!/bin/bash
if [[ $# -eq 0 ]] ; then
    echo "Run the script with the required auth user and namespace for the secret: ${0} [user] [namespace]"
    exit 0
fi
printf "${1}:`openssl passwd -apr1`\n" >> sperkins-auth.tmp
kubectl create secret generic sperkins-auth --from-file=sperkins-auth.tmp -n ${2}
rm sperkins-auth.tmp
