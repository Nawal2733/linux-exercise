# 1. Write a shell script that adds an extension “.new” to all the files in the directory.

for file in ../*
do 
    if [ -f $file ]
    then
        # echo "$file"
        extension=${file##*\.}
        # echo "$extension" 

        if [ "$extension" = "new" ]
        then
            echo "$file already in .new extension"
        else
            mv $file `echo $file | sed "s/\(.*\.\)$extension/\1new/"` 
        fi
        
    fi
done

echo "Done...!"
