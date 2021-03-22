echo " Enter a number: "
read n

function armstrong
{
    x=$n
    s=0
    while [ $n -gt 0 ]
    do
        rem=$(($n%10))
        r_cube=$((rem*rem*rem))
        s=$((s+r_cube))
        n=$((n/10))
    done
    if [ $s == $x ]
    then
        echo " $x is a Armstrong Number."
    else
        echo " $x is not an Armstrong Number."
    fi
    }
res=`armstrong $n`
echo "$res"
