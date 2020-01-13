#!/bin/bash

function getdir(){
#             echo $1
             for file in $1/*
             do
             if test -f $file
             then
 #                  echo $file
                   arr=(${arr[*]} $file)

             else
                  getdir $file
             fi
             done

}

getdir /home/st/download/01task/partTwo/cs1
echo ${arr[@]}

read -p "please input the Argument,das der zu ersetzende Begriff sein:" para1

read -p "please input the Argument,das ersetzt werden soll ist:" para2
#path=(pwd | grep -rl $para1) 
sed -i "s/$para1/$para2/g" ${arr[@]}

