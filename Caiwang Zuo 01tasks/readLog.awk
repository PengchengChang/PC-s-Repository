#!/usr/bin/awk -f
BEGIN{
    RS="";
    FS="\n";
    count=0;
    sum=0;
    CA_1=0;
    CA_timeStepEnd=0;
    p_avg=0;
    print "timeStep  |  CA     |   deltaCA   |h_residual   | p_residual";
    print "--------------------------------------------------------------"


}
$0 ~ /Courant.*ExecutionTime/{
   count=count +1;
   split($2,a," ");
   split($3,b," ");
   split($35,c," ");
   split($36,d," ");
   sum=sum + d[8];
   if (count==1){
             CA_1=b[4]

                   }
   CA_timeStepEnd=b[4]
   print count"\t"a[3]"\t" b[4]"\t"c[8]"\t"d[8];

}
END{
      p_avg=sum / (CA_timeStepEnd - CA_1);
      print "END";
      print             "Average pressure residual :" p_avg
#     print p_avg;
#      print CA_1 
#      print CA_timeStepEnd
}
