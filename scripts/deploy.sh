#!/usr/bin/env bash
set -e

RESET='\033[0m';
STATUS='\033[1;92m';

whoami

echo -e "***********************************************"
echo -e "${STATUS}Switching to project docroot.${RESET}"
cd $DOCROOT

# reset code
git reset --hard HEAD

echo -e "***********************************************"
echo -e "${STATUS}Pulling down the latest code.${RESET}"
git pull origin $BRANCH

cat index.html

#echo -e "***********************************************"
#echo -e "${STATUS} To clear all Laravel's cache such as Compiled views cleared!, Application cache cleared!, Route cache cleared!, Configuration cache cleared!, Compiled services and packages files removed!, Caches cleared successfully! .${RESET}"

#php artisan optimize:clear