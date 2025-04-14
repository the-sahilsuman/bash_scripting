i#!/bin/bash

#Exit on any error
set -e

echo "My first script"
echo

count=1
echo "To output from variable $count "
echo

echo "taking input from user"
read -p "enter your name: " name
echo "Your name is $name."
echo

echo "Checking Git status" 
if command -v git >/dev/null 2>&1; then
    echo "✅ Git is installed."
   # echo "Upgrading Git"
   # sudo apt update
    echo
    git --version
else
    echo "❌ Git is NOT installed."
fi
echo

echo "Checking Nginx status"
if command -v nginx >/dev/null 2>&1; then
    echo "✅ Nginx is installed."
    nginx --version
else
    echo "❌ Nginx is NOT installed."
    echo "- sudo apt-get install nginx : to install"
fi
echo

for i in {1..5};do
    echo "$i for loop condition"
done
echo

count=10
while [[ $count -le 30 ]];
do
  echo "Count is $count"
  ((count++))
  if [ $count -eq 14 ];then
     echo "Condition checked"
     break
  fi 
done
echo

