#!/bin/bash

fs1=$1
echo "$fs1"
#list_files=`ls $fs1`
list_files=($(ls $fs1))
list_len=${#list_files[@]}
# echo ${#list_files[@]}
my_cwd=`pwd`

echo $my_cwd
echo "number of files is $list_len"

cd $fs1
for entry in "${list_files[@]}";
   do
     wc_var=`wc -l $entry | cut -d' ' -f1` 
     echo "$entry $wc_var "
   
done

cd $my_cwd
