#!/bin/bash

echo "Enter a string: " 
read -s string # Reverse the string and compare with the original

if [[ "$string" == "$(rev <<< "$string")" ]];
 then
    echo "The entered string $string is a palindrome."
else
    echo "The entered string $string is not a palindrome."
fi