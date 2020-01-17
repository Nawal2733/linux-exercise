# Delete file which has special characters. “ -“, “—“, “*”, “$”

for file in ../../*
do
    # echo "$file"
    if [ -f "$file"]
    then
        echo "$file"
        # if [ "$file" = "-" ]
        # then 
        #     echo "$file"
        # fi
        
    fi

done
