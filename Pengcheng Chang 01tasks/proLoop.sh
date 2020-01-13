#!/bin/bash

list1=('You' 'have' 'just' 'learned' 'how' 'to' 'script' 'like' 'a' 'pro')
list2=('You' 'a' 'very' 'nice' 'Christmas' 'and' 'a' 'happy' 'new' 'year!')
level1=('a' 'c')
level2=('a' 'b' 'c' 'd' 'e')

#if [ -f listen.txt ];then
#	rm listen.txt
#fi

#x=0
#q=0

t=${#level1[@]}
b=${#level2[@]}

#while ((x<t)) # build listen[]
#do
#	y=0
#	while ((y<b))
#	do
#		listen[q]=${level1[x]}${level2[y]}
#		echo "${listen[q]}">>listen.txt
#		let y++
#		let q++
#	done
#	let x++
#done

n=0
m=0
i=0
#k=0

while ((i<t)) # replace the word
do
        cp -f replace.sh ./${level1[i]}
	cd ./${level1[i]}
	j=0
	while ((j<b))
	do
                cp -f replace.sh ./${level1[i]}${level2[j]}
                cd ./${level1[i]}${level2[j]}
#		echo "./${level1[i]}${level2[j]}"
		. ./replace.sh ${list2[n]} ${list1[m]}
		rm replace.sh
		cd ..
#		cd ..
		let n++
		let m++
		let j++
#		let k++
	done
	rm replace.sh
	let i++
done

source ./loopScript.sh

exit 0

