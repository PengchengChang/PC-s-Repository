#!/bin/bash

list1=('You' 'have' 'just' 'learned' 'how' 'to' 'script' 'like' 'a' 'pro')
list2=('Have' 'a' 'very' 'nice' 'Christmas' 'and' 'a' 'happy' 'new' 'year!')
level1=('a' 'c')
level2=('a' 'b' 'c' 'd' 'e')

a=${#level1[@]}
b=${#level2[@]}

n=0
m=0
i=0

while ((i<a)) # replace the word
do
	j=0
	while ((j<b))
	do
                cp -f replace.sh ${level1[i]}/${level1[i]}${level2[j]}
                cd ${level1[i]}/${level1[i]}${level2[j]}
#		echo "${level1[i]}/${level1[i]}${level2[j]}"
		. ./replace.sh "${list2[n]}" "${list1[m]}"
		rm -rf replace.sh
                sed -i 's/bhavesh/bash/' echo.sh 
                sed -i 's/bscriptsh/bash/' echo.sh 
                sed -i 's/bnewsh/bash/' echo.sh 
		cd ..
		cd ..
		let n++
		let m++
		let j++
	done
	let i++
done

if [ -f scriptinglikeapro ];then
	rm scriptinglikeapro
fi

x=0

level1[0]=a
level1[1]=c
level2[0]=a
level2[1]=b
level2[2]=c
level2[3]=d
level2[4]=e

k=${#level1[@]}
kk=${#level2[@]}

while ((x<k))
do
	y=0
	while ((y<kk))
	do
                        echo $(find ./${level1[x]}/${level1[x]}${level2[y]} -type f -name 'echo.sh' -exec {} \; )>>scriptinglikeapro
	        let y++
	done
	let x++
done

cat scriptinglikeapro


