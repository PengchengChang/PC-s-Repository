BEGIN{
print "timeStep  |  CA  |  deltaCA  |  h_residual  |  p_residual"
print "------------------------------------------------------------"
    i = 1
    firstCA = 0
    lastCA = 0
    sum = 0
}
{
 m = 0
 n = 0
 do{
    getline
    if ($1 == "Crank"){
       CrankAngle = $4
       i++
       if (firstCA == 0){
          firstCA = CrankAngle
          lastCA = firstCA
       }
       else{
          if (lastCA < CrankAngle){
              lastCA = CrankAngle
          }
          else{
              lastCA = lastCA
          }
       }
    }
    if ($1 == "deltaCA"){
       deltaCA = $3
    }
    if (($4 == "h,") && (n == 0)){
       h_r = $8
       h_re = substr(h_r,0,length(h_r)-1)
       n=1
    }
    if (($4 == "p,") && (m == 0)){
       p_r = $8
       p_re = substr(p_r,0,length(p_r)-1)
       sum = sum + p_re
       m=1
    }
  }
  while ($1 !~ /ExecutionTime/)
  print i,"  ",CrankAngle,"  ",deltaCA,"  ",h_re,"  ",p_re
  #print lastCA,firstCA,sum
}
END{
  Average = sum/(lastCA - firstCA)
  print "Aerage pressure residual: ",Average
}

