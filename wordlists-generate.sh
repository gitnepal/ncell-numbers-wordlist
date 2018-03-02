#!/bin/bash
input=$1 #ncell-5digits.txt
while IFS= read -r var
do
  crunch 10 10 0123456789 -t $var@@@@@ >> ncell-wordlists.txt
  
  # crunch 10 10 0123456789 -t $var@@@ >> ncell-wordlists.txt (oddpatterns 7DIGIT)
  # crunch 10 10 0123456789 -t $var@@@@@@ >> ncell-wordlists.txt (oddpatterns 4DIGIT)
done < "$input"
