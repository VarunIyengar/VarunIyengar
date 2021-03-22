echo "Enter the number: "
read n

function palindrome
{
check=$n
rem=0
rev=0
while [ $n -gt 0 ]
do
    rem=$((n % 10))
    rev=$((rev * 10 + rem))
    n=$((n / 10 ))
done
if [ $check -eq $rev ]
then
    echo "The number $check is Palindrome."
else
    echo " The number $check is not a Palindrome."
fi
}
result=`palindrome $n`
echo "$result"   
