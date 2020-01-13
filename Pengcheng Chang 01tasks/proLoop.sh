#!/bin/bash

list1=('You' 'have' 'just' 'learned' 'how' 'to' 'script' 'like' 'a' 'pro')
list2=('Have' 'a' 'very' 'nice' 'Christmas' 'and' 'a' 'happy' 'new' 'year!')
level1=('a' 'c')
level2=('a' 'b' 'c' 'd' 'e')


t=${#level1[@]}
b=${#level2[@]}


n=0
m=0
i=0


while ((i<t)) # replace the word
do
	j=0
	while ((j<b))
	do
                cp -f replace.sh ${level1[i]}/${level1[i]}${level2[j]}
                cd ${level1[i]}/${level1[i]}${level2[j]}
		. ./replace.sh "${list2[n]}" "${list1[m]}"
		rm -rf replace.sh
		cd ..
		cd ..
		let n++
		let m++
		let j++
	done
	let i++
done

source ./loopScript.sh

exit 0

