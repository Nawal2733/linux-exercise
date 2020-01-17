# 3. Write a shell script that take two input numbers from user at run-time and display arithmetic
# operation on that numbers, find out max, & min number from them, find weather that numbers
# negative or positive.

echo -e "Enter first Number : \c"
read num1
echo -e "Enter Second Number : \c"
read num2

sum=$(echo "$num1 + $num2" | bc )
sub=$(echo "$num1 - $num2" | bc )
mul=$(echo "$num1 * $num2" | bc )
divid=$(echo "scale=2; $num1 / $num2" | bc)
modulo=$(echo "$num1 % $num2" | bc )

echo "====== Arithmetic Operation ==========="
echo "$num1 + $num2 = $sum "
echo "$num1 - $num2 = $sub "
echo "$num1 * $num2 = $mul "
echo "$num1 / $num2 = $divid "
echo "$num1 % $num2 = $modulo"
echo "=========== Max and Min ================"

max() {
    n1=$1
    n2=$2
    if (( $( echo "$n1 > $n2" |bc -l ) ))
    then
        echo "Max Number is $n1"
    else
        echo "Max Number is $n2"
    fi
}

min() {
    n1=$1
    n2=$2
    if (( $(echo "$n1 < $n2" |bc -l ) ))
    then
        echo "Min Number is $n1"
    else
        echo "Min Number is $n2"
    fi
}

max $num1 $num2
min $num1 $num2

echo "============ Positive and Negative ============="

if (( $(echo "$num1 > 0 " | bc -l ) ))
    then   
        echo "First Number $num1 is Positive"
    else
        echo "First Number $num1 is Negative"
fi
if (( $(echo "$num2 > 0 " | bc -l ) ))
    then   
        echo "Second Number $num2 is Positive"
    else
        echo "Second  Number $num2 is Negative"
fi


# done