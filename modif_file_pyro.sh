#!/bin/bash
#Author : MG
#V1.0
#select field in pyroscience software output
ls *.txt
for i in *.txt; do
	echo "$i"
	j=$(echo "$i" | sed -e "s_\(.*\)\.txt_\1_")
	cat $i | sed "1, 21d" | awk -F "\t" '{print $1, $2, $3, $5, $6, $9, $10, $17, $18}' > "${j}_last.txt"
done