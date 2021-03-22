echo "Enter the number: "
read n
function binary_to_decimal
{
  len=${#n}
  i=0
  pow=0
  dec=0
  while [ $i -lt $len ]
  do
     rem=$((n % 10)) 
     pow=$((2 ** i))
     dig=$((rem * pow))
     dec=$((dec + dig))
     i=$((i + 1))
     n=$((n /10 ))
 done
 echo "Equivalent Decimal no: "$dec
 }
 result=`binary_to_decimal $n`
 echo "$result"
