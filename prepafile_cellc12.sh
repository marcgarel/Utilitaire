ls *.CSV
for i in *.CSV; do
	echo "$i"
	j=$(echo "$i" | sed -e "s_\(.*\)\.txt_\1_")
	cat $i | sed -e :a -e '$d;N;2,3ba' -e 'P;D'> "${j}_transf.txt"

done