# ==============================================================================

f() {
    d=$1
    cd $d
    for item in *
    do  
        if [ -d "$item" ]
            # printf "\t"
            then
                for((i=0;i<count;i++)); do
                    printf "  "
                done
                if [ $count -eq 0 ]
                    then
                        printf "$item"
                    else
                        printf "  |----$item"
                fi
                echo
                (( count++ ))
                f $item
                cd ..
                (( count-- ))
            else
                for((i=0;i<count;i++)); do
                    printf "  "
                done
                
               if [ $count -eq 0 ]
                    then
                        printf "$item"
                    else
                        printf "  |----$item"
                fi
                echo
        fi
    done
}

echo -e "Enter Path : \c"
read path
count=0

if [ -d "$path" ]
then
    f "$path"
fi
