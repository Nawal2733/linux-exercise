# 6. Write a shell script to get the total count of the word “Linux” in all the “.txt” files and also across
# files present in sub-directories.


fun(){
    d=$1
    # echo "$d"
    if [ -d "$d" ]
        then
            for d1 in $d/*
            do
                fun $d1
            done
        else
           if [ "${d##*.}" = "txt" ]
                then
                    wc -m "$d"
            fi
    fi
}

for item in ../*
do
    fun $item
done

# for file in ../*
# do
#     if [ -f "$file" ]
#     then
#         if [ "${file##*.}" = "txt" ]
#         then
#             wc -m "$file"
#         fi
#     fi
# done

# Done