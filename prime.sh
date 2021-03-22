echo " Enter a number "
read n
function prime
{
   m=0
   for i in { 2..n..1 }
   do
       if [ $((n % i)) -eq 0 ]
       then
           m=1      
           fi
   done
   if [ $m -eq 0 ]
   then
       echo " The number $n is a prime number."
   else
       echo " The number $n is not a prime number."
   fi
}
result=`prime $n`
echo "$result"
           
   

