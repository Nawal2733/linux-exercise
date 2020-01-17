# 10. Task to find all files from folder where file contains string 'abc'

for file in ../folder/*
do
    if [ -f "$file" ]
        then
            # grep -H 'abc' "$file"
            grep -l 'abc' "$file"
        else
            continue
    fi
done

# Done