#CA=($(awk '/Crank angle/ {print $4}' log.coldEngineCreviceFoam.7))
#deltaCA=($(awk '/deltaCA/ {print $3}' log.coldEngineCreviceFoam.7))
#h_r=($(awk -F ' ,' '/h\, Initial residual/ {print $10}' log.coldEngineCreviceFoam.7))
#p_r=($(awk -F ' ,' '/p\, Initial residual/ {print $9}' log.coldEngineCreviceFoam.7))

#numberCA=${#CA[*]}
#numberh_r=${#h_r[*]}
#numberp_r=${#p_r[*]}
#echo "numberCA"

BEGIN{
  #      system("echo $(awk '/Crank angle/{print $4}' log.coldEngineCreviceFoam.7)>>CA.txt");
        system("awk '/Crank angle/{print $4}' log.coldEngineCreviceFoam.7");
  #      print CA;
  #      i=system("${#CA[@]}") 
  #      print i 
	print "timeStep  |  CA  |  deltaCA  |  h_residual  |  p_residual"
	print "------------------------------------------------------------"
#x=system("awk '{print $1}' CA.txt") 
#print "asdf",x     
}
{
      #  for ( i=1; i<13779; i++)
       
     # system("awk '{print $i}' CA.txt")      
 
    
  


	}
END{
	print "Average pressure residual:"
}

