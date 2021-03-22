echo "Enter the no. till which Fibonacci series is to be displayed: "
read n
function fibonacci 
{

if [ $n -eq 1 ]
then
    echo "0"
else
    a=0
    b=1
    i=2
    echo -n " $a $b"
    while [ $i -lt $n ]
    do
      
       c=$((a + b))
       echo -n " $c"
       a=$b
       b=$c
       i=$((i+1))
    done
fi
}
result=`fibonacci $n`
echo "$result"
    

