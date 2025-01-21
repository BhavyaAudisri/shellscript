#!/bin/bash
 echo "total no of words in a file is : $(wc -w sample.txt)" #display total no of words in a file
 echo "total no of line in a file : $(wc -l sample.txt)"
 #!/bin/bash
#Desc: Find out frequency of words in a file
if [ $# -ne 1 ];
then
  echo "Usage: $0 filename";
  exit -1
fi

filename=$1
egrep -o "\b[[:alpha:]]+\b" $filename | \

awk '{ count[$0]++ }
END echo " %-14s%s\n","Word","Count" "

for ind in count
do
   echo "%-14s%d\n",ind,count[ind] "
done