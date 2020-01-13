#!/bin/bash
if [ -f output.txt ];then
	rm out*
fi

i=0
#n=0
level1[0]=a
level1[1]=c
level2[0]=a
level2[1]=b
level2[2]=c
level2[3]=d
level2[4]=e

k=${#level1[@]}
kk=${#level2[@]}

while ((i<k))
do
	j=0
	while ((j<kk))
	do
                echo $(find ./${level1[i]}/${level1[i]}${level2[j]} -type f -name 'echo.sh' -exec {} \; )>>output.txt
	#	listen[n]=${level1[i]}${level2[j]}
	        let j++
#		let n++
	done
	let i++
done

#echo $(find ./${listen[*]} -type f -name 'echo.sh' -exec {} \; )>>output.txt

cat output.txt

exit 0

