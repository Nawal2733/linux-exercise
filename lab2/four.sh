# 4. Write a shell script that take one input number from user and print 1 to n number using three
# loops (For, while, until). (N = entered number)

echo -e "Enter the Number : \c"
read n
if (( $(echo "$n > 1 " |bc -l ) ))
    then
        echo "======== Using For Loop ========= "
        for (( i=0; i<=$n; i++))
        do
            echo "$i"
        done

        echo "======== Using while Loop ========= "
        count=0
        while [ $count -le $n ]
        do
            echo "$count"
            (( count++ ))
        done

        echo "======== Using until Loop ========= "
        count=0
        until [ ! $count -le $n ]
        do
            echo "$count"
            (( count++ ))
        done

    else
        echo "Plese Enter Positive Number ..."
fi

# Done