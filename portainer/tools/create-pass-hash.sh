#!/bin/bash
# USAGE : ./create-pass-hash.sh

# Creates a hash for a portainer password
# After create, just past it into the docker-compose.yml file
# at portainer service --admin-password hash
# BE CAREFUL : In docker-compose, add a $ before each $ in the password hash

# Read password
echo -e "Choose a user name :\n"
read user
echo -e "Choose a password to hash :\n"
read -s password
echo "Result hash :"

# User/Password hash
htpasswd -nb -B ${user} ${password} | cut -d ":" -f 2
