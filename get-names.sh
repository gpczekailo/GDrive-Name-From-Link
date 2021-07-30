#!/bin/bash
cat $1 | tr ',' '\n' | tr -d ' ' | awk -F '\n' '{print "curl "$1}' | bash |  awk -F "'title': '|', 'isItemTrashed'" '{print $2 "|"}' | tr -d '\n' | tr -s '|' | tr '|' '\n' > aux1.txt

cat $1 | tr ',' '\n' | tr -d ' ' | awk -F '\n' '{print $1}' > aux2.txt


paste -d',' aux1.txt aux2.txt > aux3.txt

sort aux3.txt > output.csv

rm aux1.txt aux2.txt aux3.txt
