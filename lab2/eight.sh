# 8. Display specific number of lines as follow:

echo -e "Enter the file name : \c"
read path

# (i). Display first and last 10 lines of file contains

echo "========== first 10 Line ================"
head -10 "$path"

echo "=========== last 10 Line ================="
tail -10 "$path"

# (ii). Display line no. 3 to 8 from file contains.
echo
echo "========== Display line no. 3 to 8 ========"
tail +3 "$path" | head -6


# (iii). Display 7 lines and start from second last line in reverse manner.
echo
echo "=== Display 7 lines and start from second last line in reverse manner =="
head -n -1 "$path" | tail -7


# done