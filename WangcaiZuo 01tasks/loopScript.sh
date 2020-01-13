#!/bin/bash
function is_empty_dir(){
    return $(ls -A $file|wc -w)
#    echo $res

}

#is_empty_dir $file

function getdir(){
#             echo $1
       for file in $1/*
           do
           if is_empty_dir $file
              then
                   continue 
           else
 if test -f $file
               then
                aa=$(grep 'echo' $file)  #system command mit $()
                if [ $? -eq 0 ]
                      then
                        $file
                else          
 #     else [ $? -ne 0 ]
                     
                            cat $file
#                   arr=(${arr[*]} $file)

                   fi
               else
                  getdir $file
             fi
             
           fi
           done

}

getdir $1
#echo ${arr[@]}

exit 0
