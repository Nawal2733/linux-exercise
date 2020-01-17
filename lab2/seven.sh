# 7. Write a shell script that copy all the directories, sub-directories and files from one location to
# another specific location.

echo -e "Enter the source path : \c"
read sou
echo -e "Enter the Destination path : \c"
read des

cp -r "$sou" "$des"


# Done